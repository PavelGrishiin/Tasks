//
//  Errors.swift
//  Tasks
//
//  Created by Nikita Grishin on 4/28/22.
//

// MARK: - TasksExecutionError

enum TasksExecutionError: Error {
	case emptyTasksList
	case invalidTaskIndex
	case unexpected(error: Error)
	
	var description: String {
		switch self {
		case .emptyTasksList: return Texts.Errors.Fatal.emptyTasksList
		case .invalidTaskIndex: return Texts.Errors.Fatal.invalidTaskIndex
		case .unexpected(let error): return Texts.Errors.Unexpected.makeDescription(for: error)
		}
	}
}

// MARK: - Error Extension

extension Error {
	func convertedToTasksExecutionError() -> TasksExecutionError {
		switch self {
		case let error as TasksExecutionError: return error
		default: return .unexpected(error: self)
		}
	}
}
