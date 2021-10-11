//
//  todolistApp.swift
//  todolist
//
//  Created by 菅島優太 on 2021/10/08.
//

import SwiftUI

@main
struct todolistApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(UserDate())
        }
    }
}
