//
//  Day6Solver.swift
//  advent-of-code-2022
//
//  Created by Fabian on 25.05.23.
//

import Foundation

func day6part1solution(input: String)->Int {
    var solution = 0
    
    let lines = input.components(separatedBy: "\n")
    
    var charArr = [Character]()
    
    for line in lines {
        for a in line {
            charArr.append(a)
        }
    }
    
    print(charArr)

    var skip = 0
    
    for a in stride(from: skip, to: charArr.count-3, by: 1) {
        if (charArr[a+0] == charArr[a+1] || charArr[a+0] == charArr[a+2] || charArr[a+0] == charArr[a+3] || charArr[a+1] == charArr[a+2] || charArr[a+1] == charArr[a+3] || charArr[a+2] == charArr[a+3]) {
            print ("same: ", charArr[a], " ", charArr[a+1], " ", charArr[a+2], " ", charArr[a+3])
        } else {
            solution = a+4
            return solution
        }
    }
    
    return solution
}

func day6part2solution(input: String)->Int {
    var solution = 0
    
    return solution
}
