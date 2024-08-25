//
//  LoginView.swift
//  ToDoList
//
//  Created by Bhuwan Singh on 23/08/24.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                // header
                HeaderView(title: "To Do List", subTitle: "Get Things Done", angle: 15, background: Color.pink)
                // login form
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email Address" , text : $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocorrectionDisabled()
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    SecureField("Password" , text : $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TLButton(
                        title: "Login",
                        background: .blue)
                    {
                        // Action
                        viewModel.login()
                    }
                }
                // create account
                VStack {
                    Text("New Account here?")
                    NavigationLink("Create an account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
