//
//  ContentView.swift
//  OnThisDay
//
//  Created by 이지원 on 2022/09/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var appState: AppState
    @State private var eventType: EventType? = .events

    var events: [Event] {
        appState.dataFor(eventType: eventType)
    }

    var windowTitle: String {
        if let eventType {
            return "On This Day - \(eventType.rawValue)"
        }
        return "On This Day"
    }

    var body: some View {
        NavigationView {
            SidebarView(selection: $eventType)
            GridView(gridData: events)
        }
        .frame(
            minWidth: 700,
            idealWidth: 1000,
            maxWidth: .infinity,
            minHeight: 400,
            idealHeight: 800,
            maxHeight: .infinity
        )
        .navigationTitle(windowTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
