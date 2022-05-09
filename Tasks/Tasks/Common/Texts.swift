//
//  Texts.swift
//  Tasks
//
//  Created by Nikita Grishin on 4/28/22.
//

enum Texts {
	enum Tasks {
		static var listHeader: String { "LIST OF TASKS" }
		static var choiceGuide: String { "(Enter a task number to start it execution)" }
		static var numberChoice: String { "Choose the task number:" }
		static var requirementHeader: String { "TASK REQUIREMENT:" }
		static var executionResult: String { "TASK EXECUTION RESULT:" }
	}
	
	enum Application {
		static var askToContinue: String { "DO YOU WAN'T TO CONTINUE?" }
		static var choiceGuide: String { "(Enter 'y' in case of 'yes' or 'n' in case of 'no')" }
	}
	
	enum Errors {
		enum Fatal {
			private static var code: String { "[FATAL ERROR]" }

			static var emptyTasksList: String { "\(code) THERE ARE NO TASKS TO EXECUTE!" }
			static var invalidTaskIndex: String { "\(code) THERE IS NO TASK WITH CHOSEN NUMBER!" }

		}
		
		enum Unexpected {
			private static var code: String { "[UNEXPECTED ERROR]" }

			static func makeDescription(for error: Error) -> String {
				"\(code) \(error.localizedDescription)"
			}
		}
		
		private static var code: String { "[ERROR]" }
		
		static var invalidNumberInput: String { "\(code) PLEASE, ENTER CORRECT NUMBER!" }
		static var invalidAnswerInput: String { "\(code) PLEASE, ENTER CORRECT ANSWER!" }
	}
	
	static var emptyLine: String { "" }
	static var separator: String { String(Array(repeating: "+", count: 120)) }
}
