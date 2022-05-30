//
//  Workout.swift
//  ChallengeTreino
//
//  Created by Rodrigo de Anhaia on 28/05/22.
//

import Foundation

struct Workout: Identifiable, Equatable {
    var id = UUID().uuidString
    var name: Int
    var description: String
    var date: Date
}
