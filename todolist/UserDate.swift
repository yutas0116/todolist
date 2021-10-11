//
//  UserDate.swift
//  todolist
//
//  Created by 菅島優太 on 2021/10/09.
//

import SwiftUI

class UserDate: ObservableObject{
    @Published var tasks = [
        Task(title: "散歩",checked: true),
        Task(title: "買い物", checked: false)
    ]
    @Published var isEditing: Bool = false
}
