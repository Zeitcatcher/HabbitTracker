//
//  ContentView.swift
//  HabbitTracker
//
//  Created by Arseniy Oksenoyt on 5/21/24.
//

import SwiftUI

struct ContentView: View {
    @State private var doneColor = Color.green
    @State private var notDoneColor = Color.red
    
    @State private var habbits = AllHabbits()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                HabbitSection(title: "Habbits", habbits: habbits.habbitList)
                .navigationTitle("Habbits")
            }
            .toolbar {
                NavigationLink {
                    AddNewHabbitView(habbits: AllHabbits())
                } label: {
                    Label("Add", systemImage: "plus")
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
