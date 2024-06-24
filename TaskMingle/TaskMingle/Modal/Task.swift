//
//  Task.swift
//  TaskMingle
//
//  Created by Aran Ali on 2024-06-20.
//

import Foundation

struct Task: Identifiable {
    let id = UUID()
    let systemImageName: String
    let headline: String
    let subheadline: String
    let isCompleted: Bool
    let priority: TaskPriority
}

enum TaskPriority {
    case high, medium, low
}
