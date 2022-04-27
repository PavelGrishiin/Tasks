//
//  Task1.swift
//  Tasks
//
//  Created by Pavel Grishin on 4/27/22.
//

import Foundation
class TaskOne {
static func Task1() {
    let string = "abccbabacbcabcbacbabcbabcabcbcbcbababacbcbabcabcabcabcbabacbcbacbacbabcabcabcbacbabcabcabcbacbacbabcbabacbabcbacbacbacbcbababcbacbcbcbabcabcabcabcbabababcbcbcbcbabacbabcabcbacbacbacbacbabcabcabcbacbacbacbabcabcbacbacbabcabcbacbacbabcbacbabcabcbacbabbacbabcabcbacbcbcbcababcabababcbcbcabacbcbbaacbaacbcbcbcabaacbcbbcbabcbccbabacbcbababcbccbabaacbcbabacbcbbacbbacacaaacbcbcbcaacccbabacbacbbabcbcbababcbbccabbcbababcbacbcbabcbcbcbababcbbcbcbcabababcbcbabbabcbcbabcbabcbcbcbcbababcabcbacbacbcbcabcbabcbabc"
    let countString = string.count
    var x = 0
    print ("  enter the number")
    let input = readLine()
    guard let input = input else {return}
    guard let countElements = Int(input) else {return}
    var array = Array(string)
    if countElements <= 0 {
        print ("Error too small number")
    } else {
    while x <= countString-1{
        array.insert(" ", at: x)
        x = x + countElements
    }
    let y = String(array)
    let newArray = y.split(separator: " ")
    let set = Set(newArray)
    print (set)
}
}
}
