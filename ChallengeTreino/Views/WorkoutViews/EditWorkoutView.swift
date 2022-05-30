//
//  EditWorkoutView.swift
//  ChallengeTreino
//
//  Created by Rodrigo de Anhaia on 25/05/22.
//

import SwiftUI

struct EditWorkoutView: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var viewModel: ViewModel
    @State private var name: Int!
    @State private var description : String = ""
    @State private var date: Date!
    @Binding var workout: Workout
    
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
                
                TextField("Add a new name: \(workout.name)", value: $name, format: .number)
                    .frame(width: 300)
                    .textFieldStyle(.roundedBorder)
                    .font(.title3)
                
                TextField("Add a new description: \(workout.description)", text: $description)
                    .frame(width: 300)
                    .textFieldStyle(.roundedBorder)
                    .font(.title3)
                
                TextField("Add a new date: \(workout.date.toString())", value: $date, format: .dateTime)
                    .frame(width: 300)
                    .textFieldStyle(.roundedBorder)
                    .font(.title3)
            }
            .padding(.bottom, 300)
            
            HStack(alignment: .top, spacing: 8.0) {
                Button("Save") {
                    viewModel.editeWorkout(workout: workout, newName: name, newDescription: description, newDate: date)
                    dismiss()
                }
                .buttonStyle(PurpleGradienteButton())
            }
        }
        .accentColor(Color(.label))
    }
}

struct EditWorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        EditWorkoutView(viewModel: ViewModel(dataServive: MockedNetworkProvider()), workout: .constant(Workout(name: 0, description: "Legs", date: .now)))
    }
}
