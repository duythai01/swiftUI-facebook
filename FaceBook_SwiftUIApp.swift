//
//  FaceBook_SwiftUIApp.swift
//  FaceBook_SwiftUI
//
//  Created by Apple on 07/07/2022.
//

import SwiftUI

@main
struct FaceBook_SwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
