//
//  RegisterView.swift
//  ToDoList
//
//  Created by Bhuwan Singh on 23/08/24.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        HeaderView(title: "Register", subTitle: "Start Organizing", angle: -15, background: Color.orange)
        Spacer()
        
        Form {
            TextField("Full Name", text : $name)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()
            TextField("Email address", text : $email)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                .autocorrectionDisabled()
            SecureField("Password", text : $password)
                .textFieldStyle(DefaultTextFieldStyle())
            
            TLButton(title: "Create Account", background: .green){
                // Attempt Registraion
            }
            
        }.offset(y: -50)
        
    }
}

#Preview {
    RegisterView()
}
