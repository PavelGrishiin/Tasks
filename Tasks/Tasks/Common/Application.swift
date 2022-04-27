//
//  Application.swift
//  Tasks
//
//  Created by Nikita Grishin on 4/27/22.
//

class Application {
	private static let executionTask = ExecutionTask()
	
	private init() { }
	
	static func run() {
		var shouldContinue: Bool = false
		
		repeat {
			do {
				try executionTask.execute()
				shouldContinue = askToContinueTasksExecution()
			} catch {
				handleError(error)
			}
		} while shouldContinue
	}
	
	static func setTasksToExecute(_ tasks: [TitleProvidableTask]) {
		executionTask.setTasks(tasks)
	}
}

private extension Application {
	static func askToContinueTasksExecution() -> Bool {
		let input = readAnswerInput()
		
		switch input {
		case .yes:
			print(Texts.separator)
			print(Texts.emptyLine)
				
			return true
		case .no:
			return false
		case .invalid:
			print(Texts.Errors.invalidAnswerInput)
				
			return askToContinueTasksExecution()
		}
	}
	
	static func readAnswerInput() -> AnswerInput {
		print(Texts.Application.askToContinue)
		print(Texts.Application.choiceGuide)
		
		let inputString = readLine()
		print(Texts.emptyLine)
		
		let input = AnswerInput.make(fromString: inputString)
		
		return input
	}
	
	static func handleError(_ error: Error) {
		let tasksExecutionError = error.convertedToTasksExecutionError()
		
		print(tasksExecutionError.description)
	}
}
