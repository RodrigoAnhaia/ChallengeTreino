//
//  NetworkProviding.swift
//  ChallengeTreino
//
//  Created by Rodrigo de Anhaia on 28/05/22.
//

import Foundation

struct ProductionNetworkProvider: DataServiceProtocol {
    mutating func requestWorkoutData() -> [Workout] {
        return []
    }
    
    func requestWorkoutData() {
        print("Data requested using the `NetworkProvider`")
    }
    
    mutating func newWorkout(newName: Int, newDescription: String, newDate: Date) {
        //to do
    }
    
    mutating func editWorkout(workout: Workout, newName: Int, newDescription: String, newDate: Date) {
        //to do
    }
    
    mutating func deleteWorkout(workout: Workout) {
        //to do
    }
    
    mutating func requestExerciseData() -> [Exercise] {
       return []
    }
    
    mutating func newExercise(newName: Int, newImage: String, newComments: String) {
        //to do
    }
    
    mutating func editExercise(exercise: Exercise, newName: Int, newImage: String, newComments: String) {
        //to do
    }
    
    mutating func deleteExercise(exercise: Exercise) {
        //to do
    }
    
}

struct MockedNetworkProvider: DataServiceProtocol {
    var testWorkoutModel: [Workout] = [
        Workout(name: 0, description: "Legs", date: .now),
        Workout(name: 1, description: "Chest", date: .now + 72)
    ]
    
    var testExerciseModel: [Exercise] = [
        Exercise(name: 0, image: "background", comments: "conveyor"),
        Exercise(name: 1, image: "jose", comments: "bar")
    ]
    
    
    // MARK: - Workout CRUD
    mutating func requestWorkoutData() -> [Workout] {
        return testWorkoutModel
    }
    
    mutating func newWorkout(newName: Int, newDescription: String, newDate: Date) {
        testWorkoutModel.append(Workout(name: newName, description: newDescription, date: newDate))
    }
    
    mutating func editWorkout(workout: Workout, newName: Int, newDescription: String, newDate: Date) {
        if let row = self.testWorkoutModel.firstIndex(where: {$0.id == workout.id}) {
            testWorkoutModel[row].name = newName
            testWorkoutModel[row].description = newDescription
            testWorkoutModel[row].date = newDate
        }
    }
    
    mutating func deleteWorkout(workout: Workout) {
        testWorkoutModel.remove(object: workout)
    }
    
    // MARK: - Exercise CRUD
    mutating func requestExerciseData() -> [Exercise] {
        return testExerciseModel
    }
    
    mutating func newExercise(newName: Int, newImage: String, newComments: String) {
        testExerciseModel.append(Exercise(name: newName, image: newImage, comments: newComments))
    }
    
    mutating func editExercise(exercise: Exercise, newName: Int, newImage: String, newComments: String) {
        if let row = self.testExerciseModel.firstIndex(where: {$0.id == exercise.id}) {
            testExerciseModel[row].name = newName
            testExerciseModel[row].image = newImage
            testExerciseModel[row].comments = newComments
        }
    }
    
    mutating func deleteExercise(exercise: Exercise) {
        testExerciseModel.remove(object: exercise)
    }
}
