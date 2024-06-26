//
//  BottomNavbar.swift
//  TaskMingle
//
//  Created by Aran Ali on 2024-03-03.
//

import SwiftUI

struct BottomNavbar: View {
    var body: some View {
        
        Divider()
        
        HStack{
            
            Button {
                
            } label: {
                
                GeometryReader { geo in
                    
                    VStack(spacing: 4){
                        
                        Image(systemName: "calendar")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                        
                        Text("My tasks")
                    }
                    .frame(width: geo.size.width, height: geo.size.height)
                    .tint(.secondary)
                    
                }
            }
            
            Button {
                // switch to chats
            } label: {
                
                GeometryReader { geo in
                    
                    VStack (alignment: .center, spacing: 4){
                        
                        Image(systemName: "book")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                        
                        Text("My Journal")
                    }
                    .frame(width: geo.size.width, height: geo.size.height)
                    .tint(.secondary)
                    
                }
                
              
                
            }
            

            
            Button {
                
            } label: {
                
                GeometryReader { geo in
                
                    VStack(alignment: .center, spacing: 4){
                        
                        Image(systemName: "person")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                        
                        Text("Profile")
                    }
                    .frame(width: geo.size.width, height: geo.size.height)
                    .tint(.secondary)
                }
            }
        }
        .frame(height: 70)
        
    }
}

#Preview {
    BottomNavbar()
}
