//
//  SliceStringOnUniqueSubstringsTask.swift
//  Tasks
//
//  Created by Pavel Grishin on 4/27/22.
//

import Foundation

// MARK: - TASK 1
// You have one string variable
// 1. You need to write program with one input parameter of integer type
// 2. Than you need to slice string on substrings with length equals input parameter
// 3. After this you need to create array of unique substring from initial string
// 4. Print final array

class SliceStringOnUniqueSubstringsTask: TitleProvidableTask {
    var title: String { "Slice string on unique substrings with length not more than input integer parameter" }
    var taskString = "abcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabc"
    func execute() {
        print("""
              You have one string variable
               1. You need to write program with one input parameter of integer type
               2. Than you need to slice string on substrings with length equals input parameter
               3. After this you need to create array of unique substring from initial string
               4. Print final array
              
              """)
        numberOfElementsInSubstring()
        sliceStringToSomeSubstring()
   }
    var inputNumberOfElementsInParts:Int = 0
    func numberOfElementsInSubstring() -> Int {
        let input = readNumberInput()
        
        switch input {
        case .valid(let number):
            return number
        case .invalid(let message):
            Console.Print.invalidInput(message: message)
            return numberOfElementsInSubstring()
        }
        
    }
    
    func readNumberInput() -> NumberInput {
        let inputTitleTexts = [Texts.Tasks.amountOfElements]
        let inputString = Console.readInput(titleTexts: inputTitleTexts)
        let input = validateNumberInput(fromString: inputString)
        
        return input
    }
    
    func validateNumberInput(fromString inputString: String?) -> NumberInput {
        var taskNumbersRange: ClosedRange<Int> { 1...taskString.count}

        guard let inputString = inputString,
              let inputNumber = Int(inputString),
              taskNumbersRange ~= inputNumber else {
            return .invalid(message: Texts.Errors.invalidNumberInput)
        }
        inputNumberOfElementsInParts = inputNumber
        return .valid(number: inputNumber)
    }
    
    func sliceStringToSomeSubstring() {
        var convertTaskStringToArray = Array(taskString)
        let numberOfParts = taskString.count / inputNumberOfElementsInParts
        let x = inputNumberOfElementsInParts
        while inputNumberOfElementsInParts <= taskString.count + numberOfParts {
              convertTaskStringToArray.insert(" ", at: inputNumberOfElementsInParts)
              inputNumberOfElementsInParts = inputNumberOfElementsInParts + x + 1
        }
        let convertArrayToString = String(convertTaskStringToArray)
        let result = Set(convertArrayToString.split(separator: " "))
        print("result Task")
        print(result)
    }
}
