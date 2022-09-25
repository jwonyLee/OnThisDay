//
//  Toolbar.swift
//  OnThisDay
//
//  Created by 이지원 on 2022/09/25.
//

import SwiftUI

struct Toolbar: CustomizableToolbarContent {
    var body: some CustomizableToolbarContent {
        ToolbarItem(
            id: "toggleSidebar",
            placement: .navigation,
            showsByDefault: true
        ) {
            Button {
                toggleSidebar()
            } label: {
                Label("Toggle Sidebar", systemImage: "sidebar.left")
            }
            .help("Toggle Sidebar")
        }
    }

    func toggleSidebar() {
        NSApp.keyWindow?
            .contentViewController?
            .tryToPerform(
                #selector(NSSplitViewController.toggleSidebar(_:)),
                with: nil
            )
    }
}
