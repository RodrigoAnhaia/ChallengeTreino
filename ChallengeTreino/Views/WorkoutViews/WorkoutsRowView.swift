//
//  TreinoRowView.swift
//  ChallengeTreino
//
//  Created by Rodrigo de Anhaia on 22/05/22.
//

import SwiftUI

struct WorkoutsRowView: View {
    @ObservedObject var viewModel: ViewModel
    @State private var showingSheet = false
    @State var workout: Workout = Workout(name: 0, description: "", date: .now)
    
    var body: some View {
        VStack {
            List {
                Section {
                    ForEach(viewModel.dataServive.requestWorkoutData(), id: \.id) { workout in
                        VStack(alignment: .leading) {
                            Text("\(workout.name)")
                                .fontWeight(.medium)
                            
                            Text(workout.description)
                                .fontWeight(.medium)
                            
                            Text(workout.date.toString())
                                .fontWeight(.medium)
                        }
                        .swipeActions(edge: .trailing) {
                            Button(role: .destructive) {
                                self.viewModel.deleteWorkout(workout: workout)
                            } label: {
                                Label("Trash", systemImage: "trash.circle.fill")
                            }
                        }
                        
                        .swipeActions(edge: .leading)  {
                            Button(role: .destructive) {
                                self.showingSheet = true
                                self.workout = workout
                            } label: {
                                Label("Edit", systemImage: "pencil.circle.fill")
                            }
                            .tint(.indigo)
                        }
                        .padding()
                        .font(.body)
                        .padding()
                    }
                } header: {
                    Text("Workouts")
                        .font(.title3)
                        .fontWeight(.bold)
                }
            }
            .listStyle(InsetGroupedListStyle())
        }
        .sheet(isPresented: $showingSheet) {
            EditWorkoutView(viewModel: viewModel, workout: $workout)
        }
        .accentColor(Color(.label))
    }
}

struct WorkoutsRowView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutsRowView(viewModel: ViewModel(dataServive: MockedNetworkProvider()))
    }
}
