//
//  LoginView.swift
//  ToDoList
//
//  Created by Bhuwan Singh on 23/08/24.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView{
            VStack{
                // header
                ZStack{
                    RoundedRectangle(cornerRadius: 0)
                        .foregroundColor(Color.pink)
                        .rotationEffect(Angle(degrees: 15))
                    VStack{
                        Text("To Do List")
                            .foregroundColor(.white)
                            .font(.system(size: 50))
                        Text("Get Things Done")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                    }
                    .padding(.top , 30)
                }
                .frame(width: UIScreen.main.bounds.width * 3, height: 300)
                .offset(y:-100)
                // login form
                Form {
                    TextField("Email Address" , text : $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Password" , text : $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button {
                        //attempt login
                    } label : {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.blue)
                            
                            Text("Log In")
                                .foregroundColor(.white)
                                .bold()
                        }
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
