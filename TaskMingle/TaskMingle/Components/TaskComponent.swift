////
////  TaskComponent.swift
////  TaskMingle
////
////  Created by Aran Ali on 2024-06-20.
////
//
//import SwiftUI
//
//struct TaskComponent: View {
//    
//    let systemImageName: String
//    let taskHeadline: String
//    let taskSubHeadline: String
//    let taskIsCompleted: Bool
//    var taskPriority: TaskPriority
//    
//    var body: some View {
//        ZStack{
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: 340, height: 80)
//                .foregroundStyle(Color.white)
//                .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 5)
//                .overlay{
//                
//                        HStack{
//                            Image(systemName: systemImageName)
//                                .font(.title)
//                                .foregroundColor(colorForPriority(taskPriority))
//                                .padding(.leading)
//                             
//                            Spacer()
//                            VStack(alignment: .leading){
//                                Text(taskHeadline)
//                                    .font(.headline)
//                                Text(taskSubHeadline)
//                                    .font(.subheadline)
//                               
//                            }
//                            
//                            
//                            Image(systemName:   taskIsCompleted ? "checkmark.circle.fill" : "")
//                                .font(.title)
//                                .foregroundStyle(Color.green)
//                                .padding(.leading)
//                            
//                            Spacer()
//                        }
//                        
//                
//                   
//                }
//            
//        }
//    }
//}
//
//#Preview {
//    TaskComponent(systemImageName: "books.vertical.fill", taskHeadline: "Read a book", taskSubHeadline: "Read 10 pages of a book", taskIsCompleted: true, taskPriority: .high)
//}
// TaskComponent.swift
// TaskMingle
//
// Created by Aran Ali on 2024-06-20.
//

import SwiftUI

struct TaskComponent: View {
    
    let systemImageName: String
    let taskHeadline: String
    let taskSubHeadline: String
    let taskIsCompleted: Bool
    var taskPriority: TaskPriority
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 340, height: 80)
                .foregroundStyle(Color.white)
                .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 5)
                .overlay {
                    HStack {
                        Image(systemName: systemImageName)
                            .font(.title)
                            .foregroundColor(colorForPriority(taskPriority))
                            .padding(.leading)
                        
                        Spacer()
                        
                        VStack(alignment: .leading) {
                            Text(taskHeadline)
                                .font(.headline)
                            Text(taskSubHeadline)
                                .font(.subheadline)
                        }
                        
                        Spacer()
                        
                        if taskIsCompleted {
                            Image(systemName: "checkmark.circle.fill")
                                .font(.title)
                                .foregroundColor(.green)
                                .padding(.trailing)
                        }
                    }
                }
        }
    }
    
    func colorForPriority(_ priority: TaskPriority) -> Color {
        switch priority {
        case .high:
            return .red
        case .medium:
            return .yellow
        case .low:
            return .green
        }
    }
}

#Preview {
    TaskComponent(systemImageName: "books.vertical.fill", taskHeadline: "Read a book", taskSubHeadline: "Read 10 pages of a book", taskIsCompleted: true, taskPriority: .high)
}
