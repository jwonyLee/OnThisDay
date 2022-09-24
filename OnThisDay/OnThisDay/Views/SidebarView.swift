//
//  SidebarView.swift
//  OnThisDay
//
//  Created by 이지원 on 2022/09/24.
//

import SwiftUI

struct SidebarView: View {
    @Binding var selection: EventType?

    var body: some View {
        List(selection: $selection) {
            Section("TODAY") {
                ForEach(EventType.allCases, id: \.self) { type in
                    Text(type.rawValue)
                }
            }
        }
        .listStyle(.sidebar)
    }
}

struct SidebarView_Previews: PreviewProvider {
    static var previews: some View {
        SidebarView(selection: .constant(nil))
            .frame(width: 200)
    }
}
