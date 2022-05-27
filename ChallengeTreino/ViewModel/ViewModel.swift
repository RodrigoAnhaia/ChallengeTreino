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
    
    func editWorkout(workout: Workout, newName: Int, newDescription: String, newDate: Date) {
        if let row = self.workoutList.firstIndex(where: {$0.id == workout.id}) {
            workoutList[row].name = newName
            workoutList[row].description = newDescription
            workoutList[row].date = newDate
        }
    }
    
    func deleteWorkout(workout: Workout) {
        workoutList.remove(object: workout)
    }
    
    // MARK: - Exercise
    func listAllExercise() {
        exercisesList.append(Exercise(name: 0, image: "background", comments: "conveyor"))
        exercisesList.append(Exercise(name: 1, image: "", comments: "bar"))
    }
    
    func newExercise(newName: Int, newImage: String, newComments: String) {
        exercisesList.append(Exercise(name: newName, image: newImage, comments: newComments))
    }
    
    func editExercise(exercise: Exercise, newName: Int, newImage: String, newComments: String) {
        if let row = self.exercisesList.firstIndex(where: {$0.id == exercise.id}) {
            exercisesList[row].name = newName
            exercisesList[row].image = newImage
            exercisesList[row].comments = newComments
        }
    }
    
    func deleteExercise(exercise: Exercise) {
        exercisesList.remove(object: exercise)
    }
}

struct Workout: Identifiable, Equatable {
    var id = UUID().uuidString
    var name: Int
    var description: String
    var date: Date
}

struct Exercise: Identifiable, Equatable  {
    var id = UUID().uuidString
    var name: Int
    var image: String
    var comments: String 

}
