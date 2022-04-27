//
//  main.swift
//  Tasks
//
//  Created by Pavel Grishin on 4/27/22.
//

import Foundation
class Tasks {
static func List() {
    let nameTasks: String = """

    1. Task1
    2. Task2
    3. Task3
    4. Task4
    5. Task5

   choose a task

"""
 print (nameTasks)
    let choose  = readLine()
    guard let choose = choose else {
        return
    }
    switch choose {
    case "1" :
        TaskOne.Task1()
    case "2":
        print ("2")
    case "3" :
        print ("3")
    case "4":
        print ("4")
    case "5":
        print ("5")
    default:
        print ("Error ivalid number")
    }
}
}
Tasks.List()
