//
//  ContentView.swift
//  PushNotifications
//
//  Created by Enzo Henrique Botelho Romão on 10/10/25.
//

import SwiftUI
import UserNotifications

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Teste de Notificação Remota")
        }
        .padding()
        .task {
            requestPermission()
        }
    }
    
    func requestPermission() {
        let center = UNUserNotificationCenter.current()
        
        center.requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
            if granted {
                print("Permissão para receber notificações aceita!")
            } else if let error = error {
                print("Erro ao solicitar permissão: \(error.localizedDescription)")
            }
        }
    }
}


#Preview {
    ContentView()
}
