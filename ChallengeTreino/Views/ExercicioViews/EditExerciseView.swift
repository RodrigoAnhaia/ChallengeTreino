//
//  EditExerciseView.swift
//  ChallengeTreino
//
//  Created by Rodrigo de Anhaia on 26/05/22.
//

import SwiftUI

struct EditExerciseView: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var viewModel: ViewModel
    @State private var name: Int!
    @State private var image : String = ""
    @State private var comments: String = ""
    @Binding var exercise: Exercise
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            VStack(alignment: .trailing) {
                Button("Dismiss") {
                    dismiss()
                }
                .padding()
                .font(.caption)
                .padding(.trailing, 280)
            }
            
            Spacer(minLength: 20)
            
            VStack(spacing: 30) {
                Text("Edit Workouts")
                    .font(.title)
                    .fontWeight(.heavy)
                
                TextField("Add a new name: \(exercise.name)", value: $name, format: .number)
                    .frame(width: 300)
                    .textFieldStyle(.roundedBorder)
                    .font(.title3)
                
                TextField("Add a new image: \(exercise.image)", text: $image)
                    .frame(width: 300)
                    .textFieldStyle(.roundedBorder)
                    .font(.title3)
                
                TextField("Add a new comment: \(exercise.comments)", text: $comments)
                    .frame(width: 300)
                    .textFieldStyle(.roundedBorder)
                    .font(.title3)
            }
            .padding(.bottom, 300)
            
            HStack(alignment: .top, spacing: 8.0) {
                Button("Save") {
                    viewModel.editExercise(exercise: exercise, newName: name, newImage: image, newComments: comments)
                    dismiss()
                }
                .buttonStyle(PurpleGradienteButton())
            }
        }
    }
}
