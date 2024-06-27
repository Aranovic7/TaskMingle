//
//  NewTaskView.swift
//  TaskMingle
//
//  Created by Aran Ali on 2024-06-27.
//

import SwiftUI

struct NewTaskView: View {
    
    @Binding var tasks: [Task]
    
    @State private var systemImageName = ""
    @State private var headline = ""
    @State private var subheadline = ""
    @State private var priority = TaskPriority.low
    
    var body: some View {
        VStack {
                   TextField("Icon Name", text: $systemImageName)
                       .padding()
                       .background(Color.gray.opacity(0.2))
                       .cornerRadius(5)
                   
                   TextField("Headline", text: $headline)
                       .padding()
                       .background(Color.gray.opacity(0.2))
                       .cornerRadius(5)
                   
                   TextField("Subheadline", text: $subheadline)
                       .padding()
                       .background(Color.gray.opacity(0.2))
                       .cornerRadius(5)
                   
                   Picker("Priority", selection: $priority) {
                       Text("Low").tag(TaskPriority.low)
                       Text("Medium").tag(TaskPriority.medium)
                       Text("High").tag(TaskPriority.high)
                   }
                   .pickerStyle(SegmentedPickerStyle())
                   .padding()
                   
                   Button(action: {
                       let newTask = Task(systemImageName: systemImageName, headline: headline, subheadline: subheadline, isCompleted: false, priority: priority)
                       tasks.append(newTask)
                   }) {
                       Text("Add Task")
                           .foregroundColor(.white)
                           .padding()
                           .background(Color.blue)
                           .cornerRadius(10)
                   }
                   .padding()
                   
                   Spacer()
               }
               .padding()
    }
}

#Preview {
    NewTaskView(tasks: .constant([]))
}
