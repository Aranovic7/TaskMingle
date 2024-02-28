//
//  MainGoalScreen.swift
//  TaskMingle
//
//  Created by Aran Ali on 2024-02-19.
//

import SwiftUI

struct MainGoalScreen: View {
    var body: some View {
        VStack{
            
            ZStack{
                
                Color(red: 38/255, green: 170/255, blue: 197/255)
                    .ignoresSafeArea()
                
                VStack{
                    Text("What is your main goal right now?")
                        .foregroundStyle(.white)
                        .font(.title)
                        .bold()
                        .padding()
                    
                    Text("Please, choose one or more main goals. We'll provide you with recommendations.")
                        .foregroundStyle(.white)
                        .font(.title3)
                        .bold()
                        .padding()
                    
                    Button(action: {
                        print("button was pressed")
                    }, label: {
                        Text("Increase productivity")
                            .foregroundStyle(Color(red: 21/255, green: 107/255, blue: 171/255))
                            .font(.caption)
                            .fontWeight(.semibold)
                            .padding()
                            .frame(width: 250, height: 50)
                            .foregroundStyle(.white)
                            .background(Color.white)
                            .clipShape(.rect(cornerRadius: 10))
                            .padding(.top, 20)
                    })
                    
                    Button(action: {
                        print("button was pressed")
                    }, label: {
                        Text("Reduce stress")
                            .foregroundStyle(Color(red: 21/255, green: 107/255, blue: 171/255))
                            .font(.caption)
                            .fontWeight(.semibold)
                            .padding()
                            .frame(width: 250, height: 50)
                            .foregroundStyle(.white)
                            .background(Color.white)
                            .clipShape(.rect(cornerRadius: 10))
                            .padding(.top, 20)
                    })
                    
                    Button(action: {
                        print("button was pressed")
                    }, label: {
                        Text("Become more disciplined")
                            .foregroundStyle(Color(red: 21/255, green: 107/255, blue: 171/255))
                            .font(.caption)
                            .fontWeight(.semibold)
                            .padding()
                            .frame(width: 250, height: 50)
                            .foregroundStyle(.white)
                            .background(Color.white)
                            .clipShape(.rect(cornerRadius: 10))
                            .padding(.top, 20)
                    })
                    
                    Button(action: {
                        print("button was pressed")
                    }, label: {
                        Text("Sleep better")
                            .foregroundStyle(Color(red: 21/255, green: 107/255, blue: 171/255))
                            .font(.caption)
                            .fontWeight(.semibold)
                            .padding()
                            .frame(width: 250, height: 50)
                            .foregroundStyle(.white)
                            .background(Color.white)
                            .clipShape(.rect(cornerRadius: 10))
                            .padding(.top, 20)
                    })
                    
                    
                    
                    Spacer()
                }

            }
        }
    }
}

#Preview {
    MainGoalScreen()
}
