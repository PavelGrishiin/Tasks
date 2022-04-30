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
    
    func execute() {
        // [0] - think about abstraction
        // [1] - print task requirement
        // [2] - execute task
        // [3] - print execution result
        let string = "abcabcabcabcabcabcabcabcabcabcabcabcabacabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabc"
        var sizeSupstring = 0
        var result:Set = [""]
        func inputStrigSize() {
             print("please input number")
             let inputSizeString = readLine()
             guard let inputSizeString = inputSizeString else {
                   return
             }
             guard let inputSizeString = Int(inputSizeString) else {
                return inputStrigSize()
             }
        sizeSupstring = inputSizeString
        }
        
        inputStrigSize()
        
        let auxiliaryVarible = sizeSupstring
        var secondAuxiliaryVarible = 0
        
        func examinationSizeSubstring() {
              if sizeSupstring <= 0{
                 inputStrigSize()
                 examinationSizeSubstring()
              }
              if sizeSupstring > string.count {
                inputStrigSize()
                examinationSizeSubstring()
              }
        }
        
        examinationSizeSubstring()
        
            let array = Array(string)
            while array.count >= sizeSupstring {
                while sizeSupstring < array.count {
                    let text = String(array[secondAuxiliaryVarible...sizeSupstring - 1])
                    secondAuxiliaryVarible =  sizeSupstring
                    sizeSupstring = sizeSupstring + auxiliaryVarible
                    result.insert(text)
                }
                result.insert(String(array[secondAuxiliaryVarible...array.count - 1]))
            }
        
            
        print("SliceStringOnUniqueSubstringsTask execution...")
        print(Texts.emptyLine)
        print(result)
    }
    
}
