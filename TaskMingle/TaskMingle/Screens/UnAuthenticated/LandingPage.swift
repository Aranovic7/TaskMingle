//
//  LandingPage.swift
//  TaskMingle
//
//  Created by Aran Ali on 2024-06-04.
//

import SwiftUI

struct Slide: Identifiable {
    var id = UUID()
    var title: String
    var description: String
    var imageName: String
}

struct SlideView: View {
    var slide: Slide
    
    var body: some View {
        VStack {
            Image(slide.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            
            Text(slide.title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 20)
            
            Text(slide.description)
                .font(.body)
                .padding(.top, 10)
                .padding(.horizontal, 20)
        }
        .padding(.bottom, 80)
    }
}

struct LandingPage: View {
    let slides = [
           Slide(title: "Welcome to TaskMingle", description: "An app designed for whoever wants to change their life to become better using scientific based methods", imageName: "loadingIllustration"),
           Slide(title: "Pick your daily tasks", description: "Choose what you want to upgrade in life, wether it's aiming for better sleep or becoming more disciplined", imageName: "SelectionIllustration"),
           Slide(title: "Complete your taks", description: "Get a praise from your favorite celebrity for each task that you complete!", imageName: "CompletedIlustration")
       ]
    var body: some View {
        VStack{
            
            HStack{
                ZStack(alignment: .topLeading){
                        Image("blueCircle2")
                        Image("blueCircle")
                            
                    }.ignoresSafeArea()
                Spacer()
           
            }
           
            TabView{
                ForEach(slides) { slide in
                    SlideView(slide: slide)
                        
                    
                }
            }
            .tabViewStyle(PageTabViewStyle())
            
            
            Button(action: {
                print("Get started tapped")
            }) {
                
                Text("Get Started")
                    .foregroundColor(.white)
                    .bold()
                    .frame(width: 200, height: 50)
                    .background(Color(red: 0.3647058824, green: 0.662745098, blue: 0.9509803922, opacity: 1))
                    .clipShape(.rect(cornerRadius: 10))
                
            }
            .padding(.top, 10)
            
          Spacer()
            
        }
    }
}

#Preview {
    LandingPage()
}
