//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Nawal Pandit on 10/29/23.
//

import SwiftUI

/*
 MVVM Architecture
 
 model - data point
 View - UI
 ViewModel - manages Models for View
 
 */
extension Color {
    static let mercury = Color(UIColor(red: 200/255, green: 200/255, blue: 200/255, alpha: 1.0))
}

@main
struct ToDoListApp: App {
    
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
