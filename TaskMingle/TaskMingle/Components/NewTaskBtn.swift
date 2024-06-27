//
//  NewTaskBtn.swift
//  TaskMingle
//
//  Created by Aran Ali on 2024-06-27.
//

import SwiftUI

struct NewTaskBtn: View {
    var body: some View {
        VStack {
                    Button(action: {
                        // Åtgärd när knappen trycks
                        print("Knappen trycktes!")
                    }) {
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                    }
                    .frame(width: 90, height: 90)
                    .background(Color.blue)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                }
    }
}

#Preview {
    NewTaskBtn()
}
