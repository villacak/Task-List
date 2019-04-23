//
//  TaskManager.swift
//  Task List
//
//  Created by Klaus Villaca on 12/8/14.
//  Copyright (c) 2014 Klaus Villaca. All rights reserved.
//

import UIKit


var  taskMgr : TaskManager = TaskManager()

struct task {
    var name = "Un-Named"
    var desc = "Un-Described"
}

class TaskManager: NSObject {
    var tasks = [task()]
    
    func addTaskName(name: String, desc: String) {
        tasks.append(task(name: name, desc: desc))
    }
}
