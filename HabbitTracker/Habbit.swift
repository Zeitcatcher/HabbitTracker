//
//  Habbit.swift
//  HabbitTracker
//
//  Created by Arseniy Oksenoyt on 5/23/24.
//

import Foundation

struct Habbit: Identifiable, Codable {
    var id = UUID()
    let name: String
    let description: String?
}
