//
//  ContentView.swift
//  Lesson2Assignment
//
//  Created by Sandra Gomez on 4/11/24.
//

import SwiftUI
import Charts

struct EDCSchedule: Identifiable {
    var day: String
    var stage: String
    var votes: Int
    var id = UUID()
}

var MyEDCSchedule: [EDCSchedule] = [
    .init(day: "Friday", stage: "Techno", votes: 8),
    .init(day: "Friday", stage: "HardStyle", votes: 4),
    .init(day: "Friday", stage: "Drum & Bass", votes: 3),
    .init(day: "Saturday", stage: "Techno", votes: 4),
    .init(day: "Saturday", stage: "HardStyle", votes: 5),
    .init(day: "Saturday", stage: "Drum & Bass", votes: 6),
    .init(day: "Sunday", stage: "Techno", votes: 4),
    .init(day: "Sunday", stage: "HardStyle", votes: 8),
    .init(day: "Sunday", stage: "Drum & Bass", votes: 3)
]

struct ContentView: View {
    var body: some View {
        VStack {
            Chart(MyEDCSchedule) { x in
                BarMark(x: .value("Day", x.day),
                        y: .value("Votes", x.votes))
                .foregroundStyle(by: .value("Stage", x.stage))}
        }
    }
}

#Preview {
    ContentView()
}
