//
//  HomeScreen.swift
//  TaskMingle
//
//  Created by Aran Ali on 2024-03-03.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack{
            ToDoView()
            
            Spacer()
            
            BottomNavbar()
        }
        .navigationBarBackButtonHidden()
        
    }
}

#Preview {
    HomeScreen()
}
