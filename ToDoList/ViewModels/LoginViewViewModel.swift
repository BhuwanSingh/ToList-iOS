//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Bhuwan Singh on 23/08/24.
//
import FirebaseAuth
import Foundation

class LoginViewViewModel : ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login(){
        guard validate() else {
            return
        }
        
        // Try login
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill all fields."
            return false
        }
        
        // email
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter valid email."
            return false
        }
        return true
    }
}
