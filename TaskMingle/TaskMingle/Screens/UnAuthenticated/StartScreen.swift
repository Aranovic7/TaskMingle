//
//  SplashScreen.swift
//  TaskMingle
//
//  Created by Aran Ali on 2024-02-18.
//

import SwiftUI

struct StartScreen: View {
    
    @State var showLoadingImage: Bool = true
    @State var showSelectionImage: Bool = false
    @State var showCompletionImage: Bool = false
    
    @State var showGymImage: Bool = false
    @State var showReadingImage: Bool = false
    @State var showSleepImage: Bool = false
    @State var showMeditationImage: Bool = false
    
    @State var titleText: String = "Welcome to TaskMingle"
    @State var descriptionText: String = "An app designed for whoever wants to change their life to become better using scientific based methods"
    
    
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
                
                if showLoadingImage == true {
                    Image("loadingIllustration")
                        .padding()
                        .onAppear{
                            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                                withAnimation{
                                    showLoadingImage = false
                                    showSelectionImage = true
                                    updateTextForSelectionIllustration()
                                }
                            }
                        }
                } else if showSelectionImage == true {
                        Image("SelectionIllustration")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding()
                            .onAppear{
                                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                                    withAnimation{
                                        showSelectionImage = false
                                        showCompletionImage = true
                                        updateTextForCompletedIllustration()
                                    }
                                }
                            }
                } else if showCompletionImage {
                    Image("CompletedIlustration")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                        .onAppear{
                            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                                withAnimation{
                                    showSelectionImage = false
                                    showCompletionImage = true
                                }
                            }
                        }
                    
                }
               
                HStack{
                    Circle()
                        .frame(width: 10, height: 10)
                        .foregroundStyle(showLoadingImage ? Color.blue : Color.blue.opacity(0.3))
                    Circle()
                        .frame(width: 10, height: 10)
                        .foregroundStyle(showSelectionImage ? Color.blue : Color.blue.opacity(0.3))
                    Circle()
                        .frame(width: 10, height: 10)
                        .foregroundStyle(showCompletionImage ? Color.blue : Color.blue.opacity(0.3))
                }
                
                Text(titleText)
                    .font(.title2)
                    .bold()
                    .padding()
                   
                Text(descriptionText)
                    .font(.subheadline)
                    .padding(.horizontal)
                
                Button(action: {
                    print("hhh")
                }, label: {
                    Text("Get Started")
                        .foregroundColor(.white)
                        .bold()
                        .frame(width: 200, height: 50)
                        .background(Color(red: 0.3647058824, green: 0.662745098, blue: 0.9509803922, opacity: 1))
                        .clipShape(.rect(cornerRadius: 10))
                        .padding()
                })
              
            }
            .offset(y: -100)
            
            Spacer()
            
            //NavigationLink(destination: MainGoalScreen() )
        }
    }
    
    func updateTextForSelectionIllustration() {
        titleText = "Pick your daily tasks"
        descriptionText = "Choose what you want to upgrade in life, wether it's aiming for better sleep or becoming more disciplined"
    }
    
    func updateTextForCompletedIllustration() {
        titleText = "Complete your taks"
        descriptionText = "Get a praise from your favorite celebrity for each task that you complete!"
    }
}



#Preview {
    StartScreen()
}

