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
           Slide(title: "Complete your tasks", description: "Get a praise from your favorite celebrity for each task that you complete!", imageName: "CompletedIlustration")
       ]
    var body: some View {
        VStack{
           
            TabView{
                ForEach(slides) { slide in
                    SlideView(slide: slide)
                        
                    
                }
            }
            .tabViewStyle(PageTabViewStyle())
            
            NavigationLink(destination: LoginView()) {
                Text("Get Started")
                    .foregroundColor(.white)
                    .bold()
                    .frame(width: 200, height: 50)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.5), Color.blue]), startPoint: .leading, endPoint: .trailing)
                    )
                    .clipShape(.rect(cornerRadius: 25))
            }
            .padding(.top, 10)
            
          Spacer()
            
        }
        .background(Image("TaskMingleLandingPage")
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all))
    }
}

#Preview {
    LandingPage()
}
