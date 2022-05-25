//
//  ExercicioRowView.swift
//  ChallengeTreino
//
//  Created by Rodrigo de Anhaia on 22/05/22.
//

import SwiftUI

struct ExerciseRowView: View {
    @ObservedObject var viewModel: ViewModel 
    
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
                        .padding()
                        .font(.body)
                        .padding()
                    }
                    .onDelete(perform: viewModel.deleteExercise)
                } header: {
                    Text("Exercises")
                        .font(.title3)
                        .fontWeight(.bold)
                }
            }
            .listStyle(InsetGroupedListStyle())
        }
    }
}

struct ExercicioRowView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseRowView(viewModel: ViewModel())
    }
}
