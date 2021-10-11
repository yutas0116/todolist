//
//  Draft.swift
//  todolist
//
//  Created by 菅島優太 on 2021/10/11.
//

import SwiftUI


struct Draft: View {
    @State var taskTitle = ""
    @EnvironmentObject var useraDate: UserDate
   
    var body: some View {
        TextField("タスクを入力してください",text: $taskTitle,onCommit: {self.createTask()
            self.useraDate.isEditing = false
        })
    }
    func createTask (){
        let newTask = Task(title: self.taskTitle, checked: false)
        self.useraDate.tasks.insert(newTask, at: 0)
        self.taskTitle = ""
        
    }
}

struct Draft_Previews: PreviewProvider {
    static var previews: some View {
        Draft()
    }
}
