//
//  LoginView.swift
//  TaskMingle
//
//  Created by Aran Ali on 2024-06-06.
//

import SwiftUI

struct LoginView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    @State private var isSignedIn = false
    
    var body: some View {
        VStack{
            
            Spacer()
            
//            Image("TaskMingle_Logo")
//                .resizable()
            
            Text("Login")
                .font(.largeTitle)
                .padding(.bottom, 20)
            
            TextField("Email", text: $email)
                .padding()
                //.background(Color(.systemGray6))
                .background(Color.white)
                .cornerRadius(10)
                .padding()
            
            SecureField("Password", text: $password)
                .padding()
               // .background(Color(.systemGray6))
                .background(Color.white)
                .cornerRadius(10)
                .padding(.bottom, 20)
                .padding()
            
//            Button(action: {
//                // Handle login action here
//                print("Login button tapped")
//            }) {
//                Text("Sign in")
//                    .font(.headline)
//                    .foregroundColor(.white)
//                    .padding()
//                    .frame(width: 220, height: 50)
//                    .background(
//                        LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.5), Color.blue]), startPoint: .leading, endPoint: .trailing)
//                    )
//                    .cornerRadius(25)
//                
//            }
            
            NavigationLink(destination: HomeScreen(), isActive: $isSignedIn) {
                        Button(action: {
                           
                            isSignedIn = true
                            print("isSignedIn: \(isSignedIn)")
                        }) {
                            Text("Sign in")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 220, height: 50)
                                .background(
                                    LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.5), Color.blue]), startPoint: .leading, endPoint: .trailing)
                                )
                                .cornerRadius(25)
                        }
                    }
            
            
            HStack{
                Text("Don't have an account yet?")
                    .font(.body)

                NavigationLink(destination: RegisterView()) {
                   
                    Text("Sign Up")
                        .font(.body)
                        .fontWeight(.bold)
                }
            }
            .padding(20)
           
            
            
            Spacer()
            
            
        }
        .background(Color(red: 237/255, green: 247/255, blue: 255/255))
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    LoginView()
}
