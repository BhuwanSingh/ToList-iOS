//
//  User.swift
//  ToDoList
//
//  Created by Bhuwan Singh on 23/08/24.
//

import Foundation

struct User:Codable {
    let id:String
    let name: String
    let email: String
    let joined: TimeInterval
}


