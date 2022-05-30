//
//  DataServiceProtocol.swift
//  ChallengeTreino
//
//  Created by Rodrigo de Anhaia on 28/05/22.
//

import Foundation

protocol DataServiceProtocol {
    
    mutating func requestWorkoutData() -> [Workout]
    
    mutating func newWorkout(newName: Int, newDescription: String, newDate: Date)
    
    mutating func editWorkout(workout: Workout, newName: Int, newDescription: String, newDate: Date)
    
    mutating func deleteWorkout(workout: Workout)
    
    mutating func requestExerciseData() -> [Exercise]
    
    mutating func newExercise(newName: Int, newImage: String, newComments: String)
    
    mutating func editExercise(exercise: Exercise, newName: Int, newImage: String, newComments: String)
    
    mutating func deleteExercise(exercise: Exercise)
}
