//
//  main.swift
//  Tasks
//
//  Created by Pavel Grishin on 4/27/22.
//

let tasksToExecute: [TitleProvidableTask] = [
	SliceStringOnUniqueSubstringsTask()
]

Application.setTasksToExecute(tasksToExecute)
Application.run()
