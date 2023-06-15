//
//  DataController.swift
//  NaoDurmaNoPonto
//
//  Created by Alexandre Papanis on 14/06/23.
//

import CoreData
import Foundation

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "NaoDurmaNoPonto")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}

