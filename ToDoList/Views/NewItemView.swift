//
//  NewItemView.swift
//  ToDoList
//
//  Created by Bhuwan Singh on 23/08/24.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewViewModel()
    @Binding var newItemPresented: Bool
    
    var body: some View {
        VStack{
            Text("New Item")
                .bold()
                .font(.system(size: 32))
                .padding(.top, 50)
            
            Form{
                // title
                TextField("Title" , text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                // Due Date
                DatePicker("Due Date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                // Button
                TLButton(title: "Save", 
                         background: .pink,
                action: {
                    if viewModel.canSave {
                        viewModel.save()
                        newItemPresented = false
                    } else {
                        viewModel.showAlert = true
                    }
                    
                }).padding()
            }
            .alert(isPresented: $viewModel.showAlert) {
                Alert(title: Text("Error") ,
                      message: Text("Please fill in all fields and select due date that is today or later."))
            }
        }
    }
}

#Preview {
    NewItemView(newItemPresented: Binding(get: {
        return true
    }, set: { _ in
        
    }))
}
