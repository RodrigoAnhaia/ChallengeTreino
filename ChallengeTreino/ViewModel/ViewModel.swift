//
//  ViewModel.swift
//  ChallengeTreino
//
//  Created by Rodrigo de Anhaia on 17/05/22.
//

import UIKit

@MainActor class ViewModel: ObservableObject {
    @Published var workoutList: [Workout] = []
    @Published var exercisesList: [Exercise] = []
    var workout: Workout!
    
    init() {
        listAllWorkout()
        listAllExercise()
        
    }
    
    // MARK: - Workout
    func listAllWorkout() {
        workoutList.append(Workout(name: 0, description: "Legs", date: .now))
        workoutList.append(Workout(name: 1, description: "Chest", date: .now + 72))
    }
    
    func newWorkout(newName: Int, newDescription: String, newDate: Date) {
        workoutList.append(Workout(name: newName, description: newDescription, date: newDate))
    }
    
    func deleteWorkout(at offsets: IndexSet) {
        workoutList.remove(atOffsets: offsets)
    }
    
    // MARK: - Exercise
    func listAllExercise() {
        exercisesList.append(Exercise(name: 0, image: "background", comments: "conveyor"))
        exercisesList.append(Exercise(name: 1, image: "", comments: "bar"))
    }
    
    func newExercise(newName: Int, newImage: String, newComments: String) {
        exercisesList.append(Exercise(name: newName, image: newImage, comments: newComments))
    }
    
    func deleteExercise(at offsets: IndexSet) {
        exercisesList.remove(atOffsets: offsets)
    }
}

struct Workout: Identifiable {
    var id = UUID().uuidString
    var name: Int
    var description: String
    var date: Date
}

struct Exercise: Identifiable  {
    var id = UUID().uuidString
    var name: Int
    var image: String
    var comments: String 

}
