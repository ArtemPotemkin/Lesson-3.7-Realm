//
//  StorageManager.swift
//  Lesson 3.7 Realm
//
//  Created by Артём Потёмкин on 27.11.2023.
//

import Foundation

class StorageManager {
    static let shared = StorageManager()
    
    private init() {}
    
    // MARK: - Task List
    func save(_ taskLists: [TaskList]) {
        
    }
    
    func save(_ taskList: String, completion: (TaskList) -> Void) {
        
    }
    
    func delete(_ taskList: TaskList) {
        
    }
    
    func edit(_ taskList: TaskList, newValue: String) {
        
    }
    
    func done(_ taskList: TaskList) {
        
    }
    
    // MARK: - Tasks
    func save(_ task: String, withNote note: String, to taskList: TaskList, completion: (Task) -> Void) {
        
    }
    
    
}
