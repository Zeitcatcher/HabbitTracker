//
//  Task.swift
//  HabbitTracker
//
//  Created by Arseniy Oksenoyt on 5/22/24.
//

import SwiftUI

@Observable
class AllHabbits {
    var habbitList: [Habbit] {
        didSet {
            if let encoded = try? JSONEncoder().encode(habbitList) {
                UserDefaults.standard.set(encoded, forKey: "habbitList")
            }
        }
    }
    
    init() {
        if let savedHabbits = UserDefaults.standard.data(forKey: "habbitList") {
            if let decodedHabbits = try? JSONDecoder().decode([Habbit].self, from: savedHabbits) {
                habbitList = decodedHabbits
                return
            }
        }
        
        habbitList = []
    }
}
