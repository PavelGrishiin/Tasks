//
//  Console.swift
//  Tasks
//
//  Created by Nikita Grishin on 4/28/22.
//

enum Console {
	enum Print {
		enum Tasks {
			static func listHeader() {
				print(Texts.Tasks.listHeader)
				print(Texts.Tasks.choiceGuide)
				emptyLine()
			}
			
			static func titlesList(_ titles: [String]) {
				for (index, title) in titles.enumerated() {
					let taskNumber = index + 1
					print("[\(taskNumber)] - \(title)")
				}
				emptyLine()
			}
		}
		
		static func emptyLine() {
			print(Texts.emptyLine)
		}
		
		static func separator() {
			print(Texts.separator)
			emptyLine()
		}
		
		static func error(_ error: TasksExecutionError) {
			print(error.description)
		}
		
		static func invalidInput(message: String) {
			print(message)
			emptyLine()
		}
		
		fileprivate static func texts(_ texts: [String]) {
			texts.forEach { text in
				print(text)
			}
		}
	}
	
	static func readInput(titleTexts: [String]) -> String? {
		defer {
			Print.emptyLine()
		}
		
		Print.texts(titleTexts)
		let inputString = readLine()
		return inputString
	}
}
