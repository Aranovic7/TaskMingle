//
//  ContentView.swift
//  TaskMingle
//
//  Created by Aran Ali on 2024-02-18.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var firebaseManager: FirebaseManager
    
    var body: some View {
        NavigationStack{
            LandingPage()
               
        }
        
    }
}

#Preview {
    ContentView()
}
