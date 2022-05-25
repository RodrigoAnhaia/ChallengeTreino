//
//  TreinoRowView.swift
//  ChallengeTreino
//
//  Created by Rodrigo de Anhaia on 22/05/22.
//

import SwiftUI

struct WorkoutsRowView: View {
    @ObservedObject var viewModel: ViewModel 
    
    var body: some View {
        VStack {
            List {
                Section {
                    ForEach(viewModel.workoutList, id: \.id) { workout in
                        VStack(alignment: .leading) {
                            Text("\(workout.name)")
                                .fontWeight(.medium)
                            
                            Text(workout.description)
                                .fontWeight(.medium)
                            
                            Text(workout.date.toString())
                                .fontWeight(.medium)
                        }
                        .padding()
                        .font(.body)
                        .padding()
                    }
                    .onDelete(perform: viewModel.deleteWorkout)
                } header: {
                    Text("Workouts")
                        .font(.title3)
                        .fontWeight(.bold)
                }
            }
            .listStyle(InsetGroupedListStyle())
        }
    }
}

struct TreinoRowView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutsRowView(viewModel: ViewModel())
    }
}
