//
//  AddNewHabbitView.swift
//  HabbitTracker
//
//  Created by Arseniy Oksenoyt on 5/21/24.
//

import SwiftUI

struct AddNewHabbitView: View {
    @Environment(\.dismiss) var dismiss
    
    @State private var habbitName = "test habbit name"
    @State private var habbitDescription = "test habbit description"
    
    var habbits: AllHabbits
    
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
                    Button("Save") {
                        let habbit = Habbit(name: habbitName, description: habbitDescription)
                        habbits.habbitList.append(habbit)
                        print("Item saved")
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
            }
            .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    AddNewHabbitView(habbits: AllHabbits())
}
