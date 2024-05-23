//
//  ContentView.swift
//  HabbitTracker
//
//  Created by Arseniy Oksenoyt on 5/21/24.
//

import SwiftUI

struct ContentView: View {
    @State private var color = Color.red
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach(0..<10) { _ in
                    HStack {
                        NavigationLink {
                            AddNewHabbitView()
                        } label: {
                            Text("Test text")
                            Spacer()
                        }
                        .padding()
                        
                        HStack {
                            ForEach(0..<7) { _ in
                                Button {
                                    //some code for button action
                                } label: {
                                    Circle()
                                        .fill(color)
                                        .frame(width: 10, height: 10)
                                }
                            }
                        }
                        .padding()
                    }
                }
                .navigationTitle("Habbits")
            }
        }
    }
}

#Preview {
    ContentView()
}
