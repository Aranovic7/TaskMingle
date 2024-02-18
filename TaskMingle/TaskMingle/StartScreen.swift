//
//  SplashScreen.swift
//  TaskMingle
//
//  Created by Aran Ali on 2024-02-18.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        VStack{
            ZStack(alignment: .topLeading){
                    Image("blueCircle2")
                    Image("blueCircle")
                
                
            }
            .offset(x: -102)
            .ignoresSafeArea()
            Spacer()
            VStack{
                Image("loadingIllustration")
                    .padding()
                Text("Get things done with TaskMingle")
                    .font(.title2)
                    .bold()
                   
                Text("TaskMingle is an app designed for whoever you are who wants to achive a more peaceful, happy and disciplined life. This app helps you with daily tasks, motivation, and much more thins! ")
                    .padding()
                
                    .font(.subheadline)
                Button(action: {
                    print("button was pressed")
                }, label: {
                    Text("Get Started")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding()
                        .frame(width: 250, height: 50)
                        .foregroundStyle(.white)
                        .background(Color(red: 38/255, green: 170/255, blue: 197/255))
                        .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 0)
                        .clipShape(.rect(cornerRadius: 10))
                       
                    
                })
              
                    
                    
            }
            .offset(y: -100)
            
          
            Spacer()
          
                
        
            
        }
    }
}

#Preview {
    SplashScreen()
}

