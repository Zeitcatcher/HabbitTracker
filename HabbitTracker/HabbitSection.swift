//
//  HabbitSection.swift
//  HabbitTracker
//
//  Created by Arseniy Oksenoyt on 5/23/24.
//

import SwiftUI

struct HabbitSection: View {
    @State private var doneColor = Color.green
    @State private var notDoneColor = Color.red
    
    let title: String
    var habbits: [Habbit]
    
    var body: some View {
        Section(title) {
            ForEach(habbits) { habbit in
                HStack {
                    Text(habbit.name)
                    
                    Spacer()
                    
                    ForEach(0..<7) { _ in
                        Button {
                            //some code for button action
                        } label: {
                            Circle()
                                .fill(notDoneColor)
                                .frame(width: 10, height: 10)
                        }
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    HabbitSection(title: "Test", habbits: [])
}
