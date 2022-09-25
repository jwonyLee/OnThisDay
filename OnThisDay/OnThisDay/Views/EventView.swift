//
//  EventView.swift
//  OnThisDay
//
//  Created by 이지원 on 2022/09/24.
//

import SwiftUI

struct EventView: View {
    var event: Event

    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 30) {
                HStack {
                    Image(systemName: "calendar")
                    Text(event.year)
                        .font(.title)
                }

                Text(event.text)
                    .font(.title3)

                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Image(systemName: "link")
                        Text("Related Links:")
                            .font(.title2)
                    }

                    ForEach(event.links) { link in
                        Link(link.title, destination: link.url)
                            .onHover { inside in
                                if inside {
                                    NSCursor.pointingHand.push()
                                } else {
                                    NSCursor.pop()
                                }
                            }
                    }
                }

                Spacer()
            }

            Spacer()
        }
        .padding()
        .frame(width: 250)
    }
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(ColorScheme.allCases, id: \.self) {
            EventView(event: Event.sampleEvent)
                .preferredColorScheme($0)
        }
    }
}
