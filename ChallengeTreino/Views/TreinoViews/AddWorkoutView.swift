//
//  AddView.swift
//  ChallengeTreino
//
//  Created by Rodrigo de Anhaia on 19/05/22.
//

import SwiftUI

struct AddWorkoutView: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var viewModel: ViewModel
    @State var name: Int
    @State var description: String
    @State var date: Date
    
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
                Text("Workouts")
                    .font(.title)
                    .fontWeight(.heavy)
                
                TextField("Add a name: ", value: $name, format: .number)
                    .frame(width: 300)
                    .textFieldStyle(.roundedBorder)
                    .font(.title3)
                
                TextField("Add a description: ", text: $description)
                    .frame(width: 300)
                    .textFieldStyle(.roundedBorder)
                    .font(.title3)
                
                TextField("Add a date: ", value: $date, format: .dateTime)
                    .frame(width: 300)
                    .textFieldStyle(.roundedBorder)
                    .font(.title3)
            }
            .padding(.bottom, 300)
            
            HStack(alignment: .top, spacing: 8.0) {
                Button("Save") {
                    viewModel.newWorkout(newName: name, newDescription: description, newDate: date)
                    dismiss()
                }
                .buttonStyle(PurpleGradienteButton())
            }
        }
    }
}

struct AddTreinoView_Previews: PreviewProvider {
    static var previews: some View {
        AddWorkoutView(viewModel: ViewModel(), name: 0, description: "", date: .now)
    }
}

