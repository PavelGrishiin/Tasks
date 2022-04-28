//
//  Inputs.swift
//  Tasks
//
//  Created by Nikita Grishin on 4/27/22.
//

// MARK: - NumberInput

enum NumberInput: Equatable {
	case valid(number: Int)
	case invalid(message: String)
}

// MARK: - AnswerInput

enum AnswerInput {
	case yes
	case no
	case invalid(message: String)
		
	static func make(fromString string: String?) -> Self {
		switch string {
		case "y", "Y": return .yes
		case "n", "N": return .no
		default: return .invalid(message: Texts.Errors.invalidAnswerInput)
		}
	}
}
