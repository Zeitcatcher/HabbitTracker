//
//  AddNewHabbitView.swift
//  HabbitTracker
//
//  Created by Arseniy Oksenoyt on 5/21/24.
//

import SwiftUI

struct AddNewHabbitView: View {
    @State private var habbitName = ""
    @State private var habbitDescription = ""
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("name here", text: $habbitName)
                VStack(alignment: .leading) {
                    Text("description")
                        .foregroundColor(.gray)
                    TextEditor(text: $habbitDescription)
                        .frame(height: 100)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                        )
                }
            }
            .navigationTitle("Add new habbit")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") { }
                }
                
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") { }
                }
            }
        }
    }
}

#Preview {
    AddNewHabbitView()
}
