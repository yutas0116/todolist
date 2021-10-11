//
//  UserTask.swift
//  todolist
//
//  Created by 菅島優太 on 2021/10/09.
//

import SwiftUI

struct Task: Identifiable , Equatable{
    let id = UUID()
    var title : String
    var checked : Bool
    
    init (title:String,checked:Bool){
        self.title = title
        self.checked = checked
    }
}
