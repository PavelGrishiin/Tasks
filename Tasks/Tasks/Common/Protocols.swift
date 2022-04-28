//
//  Protocols.swift
//  Tasks
//
//  Created by Nikita Grishin on 4/27/22.
//

// MARK: - Task

protocol Task {
	func execute() throws
}

// MARK: - TitleProvidableTask

protocol TitleProvidableTask: Task {
	var title: String { get }
}
