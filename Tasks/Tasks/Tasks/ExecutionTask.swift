//
//  ExecutionTask.swift
//  Tasks
//
//  Created by Nikita Grishin on 4/27/22.
//

class ExecutionTask: Task {
	private var tasks: [TitleProvidableTask] = []
		
	func execute() throws {
		do {
			try confirmTasksExistence()
			let taskNumber = chooseTaskNumber()
			try executeChosenTask(withNumber: taskNumber)
		} catch let error as TasksExecutionError {
			try handleOrThrowError(error)
		}
	}
	
	func setTasks(_ tasks: [TitleProvidableTask]) {
		self.tasks = tasks
	}
}

private extension ExecutionTask {
	func confirmTasksExistence() throws {
		if tasks.isEmpty {
			throw TasksExecutionError.emptyTasksList
		}
	}
	
	func chooseTaskNumber() -> Int {
		printFormattedTasksList()
		
		let taskNumber = retrieveTaskNumberFromInput()
		
		return taskNumber
	}
	
	func printFormattedTasksList() {
		print(Texts.Tasks.listHeader)
		print(Texts.Tasks.choiceGuide)
		print(Texts.emptyLine)
		printTaskTitles()
		print(Texts.emptyLine)
	}
	
	func printTaskTitles() {
		for (index, task) in tasks.enumerated() {
			let taskNumber = index + 1
			print("[\(taskNumber)] - \(task.title)")
		}
	}
	
	func retrieveTaskNumberFromInput() -> Int {
		let input = readNumberInput()
		
		switch input {
		case .valid(let number):
			return number
		case .invalid:
			print(Texts.Errors.invalidNumberInput)
				
			return retrieveTaskNumberFromInput()
		}
	}
	
	func readNumberInput() -> NumberInput {
		print(Texts.Tasks.numberChoice)
		
		let inputString = readLine()
		print(Texts.emptyLine)
		
		let input = validateNumberInput(fromString: inputString)
		
		return input
	}

	
	func validateNumberInput(fromString inputString: String?) -> NumberInput {
		var taskNumbersRange: ClosedRange<Int> { 1...tasks.count }

		guard let inputString = inputString,
			  let inputNumber = Int(inputString),
			  taskNumbersRange ~= inputNumber else {
			return .invalid
		}

		return .valid(number: inputNumber)
	}
	
	func executeChosenTask(withNumber taskNumber: Int) throws {
		let task = try getTaskWithNumber(taskNumber)
		try task.execute()
	}
	
	func getTaskWithNumber(_ taskNumber: Int) throws -> TitleProvidableTask {
		var taskIndexesRange: ClosedRange<Int> { 0...tasks.count - 1 }
		let taskIndex = taskNumber - 1
		
		guard taskIndexesRange ~= taskIndex else {
			throw TasksExecutionError.invalidTaskIndex
		}
		
		return tasks[taskIndex]
	}
	
	func handleOrThrowError(_ error: TasksExecutionError) throws {
		switch error {
			case .invalidTaskIndex:
				print(error.description)
			case .emptyTasksList, .unexpected:
				throw error
		}
	}
}
