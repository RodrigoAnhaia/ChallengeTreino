//
//  ExercicioRowView.swift
//  ChallengeTreino
//
//  Created by Rodrigo de Anhaia on 22/05/22.
//

import SwiftUI

struct ExerciseRowView: View {
    @ObservedObject var viewModel: ViewModel
    @State private var showingSheet = false
    @State var exercise: Exercise
    
    var body: some View {
        VStack {
            List {
                Section {
                    ForEach(viewModel.exercisesList, id: \.id) { exercise in
                        VStack(alignment: .leading) {
                            Text("\(exercise.name)")
                                .fontWeight(.medium)
                            
                            Image(exercise.image)
                                .resizable()
                                .frame(width: 240, height: 240)
                                .cornerRadius(20)
                            
                            Text(exercise.comments)
                                .fontWeight(.medium)
                        }
                        .swipeActions(edge: .trailing) {
                            Button(role: .destructive) {
                                self.viewModel.deleteExercise(exercise: exercise)
                            } label: {
                                Label("Trash", systemImage: "trash.circle.fill")
                            }
                        }
                        
                        .swipeActions(edge: .leading)  {
                            Button(role: .destructive) {
                                self.showingSheet = true
                                self.exercise = exercise
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
                    Text("Exercises")
                        .font(.title3)
                        .fontWeight(.bold)
                }
            }
            .listStyle(InsetGroupedListStyle())
        }
        .sheet(isPresented: $showingSheet) {
            EditExerciseView(viewModel: viewModel, exercise: $exercise)
        }
    }
}
