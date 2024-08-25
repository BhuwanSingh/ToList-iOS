//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Bhuwan Singh on 23/08/24.
//

import Foundation


/// View Model for list of items view
/// primary tab.
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView  = false
    
    init(){}
}
