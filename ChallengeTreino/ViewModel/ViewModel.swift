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
    var dataServive: DataServiceProtocol
    
    init(dataServive: DataServiceProtocol) {
        self.dataServive = dataServive
    }
    
    
    //MARK: - Workout
    func fetchWorkoutData() -> [Workout] {
        dataServive.requestWorkoutData()
    }
    
    func newWorkout(newName: Int, newDescription: String, newDate: Date) {
        workoutList = fetchWorkoutData()
        dataServive.newWorkout(newName: newName, newDescription: newDescription, newDate: newDate)
    }
    
    func editeWorkout(workout: Workout, newName: Int, newDescription: String, newDate: Date) {
        workoutList = fetchWorkoutData()
        dataServive.editWorkout(workout: workout, newName: newName, newDescription: newDescription, newDate: newDate)
    }
    
    func deleteWorkout(workout: Workout) {
        workoutList = fetchWorkoutData()
        self.dataServive.deleteWorkout(workout: workout)
        
    }
    
    //MARK: - Exercise
    func fetchExerciseData() -> [Exercise] {
        dataServive.requestExerciseData()
    }
    
    func newExercise(newName: Int, newImage: String, newComments: String) {
        exercisesList = fetchExerciseData()
        dataServive.newExercise(newName: newName, newImage: newImage, newComments: newComments)
    }
    
    func editExercise(exercise: Exercise, newName: Int, newImage: String, newComments: String) {
        exercisesList = fetchExerciseData()
        dataServive.editExercise(exercise: exercise, newName: newName, newImage: newImage, newComments: newComments)
    }
    
    func deleteExercise(exercise: Exercise) {
        exercisesList = fetchExerciseData()
        dataServive.deleteExercise(exercise: exercise)
    }
}
