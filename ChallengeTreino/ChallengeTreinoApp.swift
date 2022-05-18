//
//  ChallengeTreinoApp.swift
//  ChallengeTreino
//
//  Created by Rodrigo de Anhaia on 17/05/22.
//

import SwiftUI

@main
struct ChallengeTreinoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
