//
//  FoodieApp.swift
//  Foodie
//
//  Created by lemonshark on 2023/4/25.
//

import SwiftUI

@main
struct FoodieApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
