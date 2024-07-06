//
//  NewCustomTaskBtn.swift
//  TaskMingle
//
//  Created by Aran Ali on 2024-06-28.
//

import SwiftUI

struct NewCustomTaskBtn: View {
    var body: some View {
        VStack{
            Button(action: {
                print("button new custom task was pressed!")
            }, label: {
                Text("Create your own task")
                    .foregroundStyle(Color.white)
                    .bold()
                    .padding()
                    .frame(width: 210, height: 50)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.7), Color.blue]), startPoint: .leading, endPoint: .trailing)
                    )
                    .cornerRadius(30)
            })
        }
    }
}

#Preview {
    NewCustomTaskBtn()
}
