//
// File: DataController.swift
// Project: BookWormCD
// 
// Created by SCOTT CROWDER on 1/14/25.
// 
// Copyright © Playful Logic Studios, LLC 2025. All rights reserved.
// 

import CoreData
import Foundation

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "Bookworm")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error {
                print("CoreData failed to load: \(error.localizedDescription)")
            }
        }
    }
}
