//
//  Music_AppApp.swift
//  Music App WatchKit Extension
//
//  Created by Abu Anwar MD Abdullah on 8/2/21.
//

import SwiftUI

@main
struct Music_AppApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
