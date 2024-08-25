//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Bhuwan Singh on 23/08/24.
//

import Foundation
import FirebaseFirestore


/// View Model for list of items view
/// primary tab.
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView  = false
    
    private let userId: String
    
    init(userId: String){
        self.userId = userId
    }
    
    /// Delete to do list item
    /// - Parameter id: Item Id to delete
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
