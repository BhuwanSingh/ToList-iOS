//
//  TLButton.swift
//  ToDoList
//
//  Created by Bhuwan Singh on 23/08/24.
//

import SwiftUI

struct TLButton: View {
    let title : String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button{
            action()
        } label : {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        }
        .padding()
    }
}

#Preview {
    TLButton(title: "click button", background: .pink){
        // Action
    }
}
