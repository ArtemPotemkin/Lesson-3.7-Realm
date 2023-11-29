//
//  DataManager.swift
//  Lesson 3.7 Realm
//
//  Created by Артём Потёмкин on 27.11.2023.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    private init() {}
    
    func createTempData(completion: @escaping() -> Void) {
        let shoppingList = TaskList()
        shoppingList.name = "Shopping List"
        
        let moviesList = TaskList(
            value: [
                "Movies List",
                Date(),
            [["Best film ever"], ["Best of the Best", "Must have", Date(), true]]
            ]
        )
        
        let milk = Task()
        milk.title = "Milk"
        milk.note = "2L"
        
        let bread = Task(value: ["Bread", "", Date(), true])
        let apples = Task(value: ["title": "Apples", "note": "2kg"])
        
        shoppingList.tasks.append(milk)
        shoppingList.tasks.insert(contentsOf: [bread, apples], at: 1)
        
        DispatchQueue.main.async {
            StorageManager.shared.save([shoppingList, moviesList])
            completion()
        }
    }
}
