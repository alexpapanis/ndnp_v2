//
//  NaoDurmaNoPontoApp.swift
//  NaoDurmaNoPonto
//
//  Created by Alexandre Papanis on 14/06/23.
//

import SwiftUI

@main
struct NaoDurmaNoPontoApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
