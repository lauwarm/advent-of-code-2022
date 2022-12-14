//
//  Day1Solver.swift
//  advent-of-code-2022
//
//  Created by Fabian on 14.12.22.
//

import Foundation

func day1solution1(input: String)->Int {
    var solution = 0
    var a = 0, b = 0
    
    let lines = input.components(separatedBy: "\n")
    
    
    for line in lines {
        a += Int(line) ?? 0
        
        if(line == "") {
            if(a > b) {
                b = a
                a = 0
            }
            solution = b
            a = 0
        }
        
    }
 
    return solution
}
