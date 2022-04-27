//
//  Protocols.swift
//  Tasks
//
//  Created by Nikita Grishin on 4/27/22.
//

protocol Task {
	func execute() throws
}

protocol TitleProvidableTask: Task {
	var title: String { get }
}
