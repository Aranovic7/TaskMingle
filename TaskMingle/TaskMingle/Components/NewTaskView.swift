//
//  NewTaskView.swift
//  TaskMingle
//
//  Created by Aran Ali on 2024-06-27.
//

import SwiftUI

struct SectionView: View {
    let emoji: String
    let title: String
    let isExpanded: Bool
    let toggleExpanded: (() -> Void)?
    
    var body: some View {
        HStack{
            Text(emoji)
                .font(.title)
                .padding(.leading)
            
            Text(title)
                .bold()
            
            Spacer()
            
            if let toggle = toggleExpanded {
                Button(action: {
                    toggle()
                }) {
                    Image(systemName: isExpanded ? "chevron.down" : "chevron.up")
                        .foregroundStyle(Color.black)
                        .padding()
                }
            } else {
                Image(systemName: "chevron.right")
                    .padding()
            }
        }
    }
}

struct NewTaskView: View {
    
    @State private var showBuild: Bool = true
    @State private var expandedSection: String? = nil
    
    var body: some View {
        VStack {
            
            Text("New task")
                .bold()
              
            
            HStack(spacing: 0){
                ZStack{
                    
                    HStack(spacing: 0){
                        
                        Button(action: {
                            showBuild = true
                        }, label: {
                            Text("Build")
                                .foregroundStyle(showBuild ? Color.white : Color.gray.opacity(0.6))
                                .frame(width: 175, height: 30)
                                .background(
                                    showBuild ?
                                    AnyView(
                                        LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.7), Color.blue]), startPoint: .leading, endPoint: .trailing)
                                    )
                                    :
                                        AnyView(
                                            Color.gray.opacity(0.2)
                                        )
                                )
                                .cornerRadius(20)
                        })
                        
                        
                        Button(action: {
                            showBuild = false
                        }, label: {
                            Text("Quit")
                                .foregroundStyle(showBuild ? Color.gray.opacity(0.6) : Color.white)
                                .frame(width: 175, height: 30)
                                .background(
                                    showBuild ?
                                    AnyView(
                                        Color.gray.opacity(0.2)
                                    )
                                    :
                                        AnyView(
                                            LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.7), Color.blue]), startPoint: .leading, endPoint: .trailing)
                                        )
                                )
                                .cornerRadius(20)
                        })
                    }
                    
                }
            }
            
            if showBuild {
                
                SectionView(emoji: "🏋️‍♀️", title: "Sports", isExpanded: expandedSection == "Sports", toggleExpanded: { toggleSection("Sports") })
                SectionView(emoji: "🧘‍♀️", title: "Mindfulness", isExpanded: expandedSection == "Mindfulness", toggleExpanded: { toggleSection("Mindfulness") })
                SectionView(emoji: "🫀", title: "Health", isExpanded: expandedSection == "Health", toggleExpanded: { toggleSection("Health") })
                SectionView(emoji: "✨", title: "Life", isExpanded: expandedSection == "Life", toggleExpanded: { toggleSection("Life") })

                
            } else {

                SectionView(emoji: "🚭", title: "Smoke less", isExpanded: false, toggleExpanded: nil)
                SectionView(emoji: "🥃", title: "Drink less alcohol", isExpanded: false, toggleExpanded: nil)
                SectionView(emoji: "💰", title: "Spend less", isExpanded: false, toggleExpanded: nil)
                SectionView(emoji: "📱", title: "Less social app", isExpanded: false, toggleExpanded: nil)
                SectionView(emoji: "🧼", title: "Bad hygiene", isExpanded: false, toggleExpanded: nil)
                SectionView(emoji: "☕️", title: "Drink less caffeine", isExpanded: false, toggleExpanded: nil)
                SectionView(emoji: "🍕", title: "Bad cost", isExpanded: false, toggleExpanded: nil)

            }
            
            Spacer()
            
            NewCustomTaskBtn()
                .padding(.bottom, 30)
        }
    }
    
    private func toggleSection(_ section: String) {
           if expandedSection == section {
               expandedSection = nil
           } else {
               expandedSection = section
           }
       }
    
}

#Preview {
    NewTaskView()
}
