// ToDoView.swift
// TaskMingle
//
// Created by Aran Ali on 2024-06-20.
//

import SwiftUI

struct ToDoView: View {
    
    // Example list of tasks
    @State private var tasks = [
        Task(systemImageName: "books.vertical.fill", headline: "Read a book", subheadline: "Read 10 pages of a book", isCompleted: true, priority: .low),
        Task(systemImageName: "doc.text.fill", headline: "Write a report", subheadline: "Finish the quarterly report", isCompleted: false, priority: .high),
        Task(systemImageName: "cart.fill", headline: "Buy groceries", subheadline: "Buy fruits and vegetables", isCompleted: false, priority: .medium)
    ]
    
    // Compute progress dynamically
    private var progress: Double {
        let completedTasks = tasks.filter { $0.isCompleted }.count
        return Double(completedTasks) / Double(tasks.count)
    }
    
    var body: some View {
        VStack {
            HeaderView()
            
            ProgressView(progress: progress)
                .padding(10)
            
            TaskListView(tasks: $tasks)
                .padding(.top, 20)
            
            Spacer()
            
            NavigationLink(destination: NewTaskView(tasks: $tasks)) {
                NewTaskBtn()
            }
        }
    }
}

struct HeaderView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .foregroundStyle(Color.white)
            .frame(width: 270, height: 60)
            .shadow(radius: 10)
            .padding()
            .overlay {
                Text("My daily tasks")
                    .font(.title)
                    .fontWeight(.bold)
            }
    }
}

struct ProgressView: View {
    var progress: Double
    
    var body: some View {
        ZStack(alignment: .leading) {
            Capsule().fill(Color.gray.opacity(0.15)).frame(height: 20)
            Capsule()
                .fill(LinearGradient(
                    gradient: Gradient(colors: [Color.blue.opacity(0.8), Color.blue.opacity(0.4), Color.blue.opacity(0.2)]),
                    startPoint: .leading,
                    endPoint: .trailing
                ))
                .frame(width: CGFloat(progress) * 270, height: 20)
                .animation(.easeInOut(duration: 0.5), value: progress) // Add animation
        }
    }
}

struct TaskListView: View {
    @Binding var tasks: [Task]
    
    var body: some View {
        ScrollView {
            ForEach(tasks) { task in
                TaskComponent(
                    systemImageName: task.systemImageName,
                    taskHeadline: task.headline,
                    taskSubHeadline: task.subheadline,
                    taskIsCompleted: task.isCompleted,
                    taskPriority: task.priority
                )
                .padding(.top)
                .shadow(color: task.id == tasks.first?.id ? Color.black.opacity(0.2) : Color.clear, radius: 20, x: 5, y: 5)
            }
            .padding(.horizontal)
            
           
            
            
        }
    }
}

#Preview {
    ToDoView()
}

