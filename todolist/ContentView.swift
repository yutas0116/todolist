//
//  ContentView.swift
//  todolist
//
//  Created by 菅島優太 on 2021/10/08.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var userDate : UserDate
    
    var body: some View {
        NavigationView{
            List{
                ForEach(userDate.tasks){ task in
                    Button(action:{
                        guard let index = self.userDate.tasks.firstIndex(of: task) else {
                            return
                        }
                           self.userDate.tasks[index].checked.toggle()
                        
                    })
                    {
                        ListRow(task: task.title, isCheck: task.checked)
                    }
                }
                
                if self.userDate.isEditing{
                    Draft()
                }else{
                    Button(action: {
                        self.userDate.isEditing = true
                    })
                    {
                        Text("+")
                            .font(.title)
                    }
                }
            }
            .navigationTitle(Text("todo"))
            .navigationBarItems( trailing: Button(action: {
                DeleteTask()
            })
                                 {
                Text("Delete")
            }
            )
        }
    }
    func DeleteTask() {
        let necessaryTask = self.userDate.tasks.filter({!$0.checked})
        self.userDate.tasks = necessaryTask
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserDate())
    }
}
