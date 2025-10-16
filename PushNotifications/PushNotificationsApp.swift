//
//  PushNotificationsApp.swift
//  PushNotifications
//
//  Created by Enzo Henrique Botelho Romão on 10/10/25.
//

import SwiftUI

@main
struct PushNotificationsApp: App {
    
    @UIApplicationDelegateAdaptor var appDelegate: CustomAppDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    appDelegate.app = self
                }
        }
    }
}
