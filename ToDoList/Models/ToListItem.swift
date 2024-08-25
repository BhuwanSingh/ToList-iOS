//
//  ToListItem.swift
//  ToDoList
//
//  Created by Bhuwan Singh on 23/08/24.
//

import Foundation

struct ToDoListItem: Codable , Identifiable {
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createdDate: TimeInterval
    var isDone: Bool
    
    mutating func setDone(_ state : Bool){
        isDone = state
    }
}
