//
//  Exercise.swift
//  ChallengeTreino
//
//  Created by Rodrigo de Anhaia on 28/05/22.
//

import Foundation

struct Exercise: Identifiable, Equatable  {
    var id = UUID().uuidString
    var name: Int
    var image: String
    var comments: String

}
