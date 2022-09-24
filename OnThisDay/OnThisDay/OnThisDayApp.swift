//
//  OnThisDayApp.swift
//  OnThisDay
//
//  Created by 이지원 on 2022/09/24.
//

import SwiftUI

@main
struct OnThisDayApp: App {
    @StateObject var appState = AppState()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appState)
        }
    }
}
