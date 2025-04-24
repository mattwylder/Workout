//
//  WorkoutApp.swift
//  Workout
//
//  Created by Matthew Wylder on 4/24/25.
//

import SwiftUI

@main
struct WorkoutApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
