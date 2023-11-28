//
//  TaskList.swift
//  Lesson 3.7 Realm
//
//  Created by Артём Потёмкин on 27.11.2023.
//

import Foundation

class TaskList {
    var name = ""
    var date = Date()
    var tasks: [Task] = []
}

class Task {
    var title = ""
    var note = ""
    var date = Date()
    var isComplete = false
}
