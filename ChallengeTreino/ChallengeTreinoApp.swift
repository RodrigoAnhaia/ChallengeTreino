//
//  ChallengeTreinoApp.swift
//  ChallengeTreino
//
//  Created by Rodrigo de Anhaia on 17/05/22.
//

import SwiftUI
import Firebase

@main
struct ChallengeTreinoApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
