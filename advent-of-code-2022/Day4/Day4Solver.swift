//
//  Day4Solver.swift
//  advent-of-code-2022
//
//  Created by Fabian on 25.05.23.
//

import Foundation

func day4part1solution(input: String)->Int {
    var solution = 0
    
    let lines = input.components(separatedBy: "\n")

    var start11 = 0
    var start12 = 0
    var start21 = 0
    var start22 = 0
    
    for line in lines {
        if (line.count == 0) {
            print("endline")
        }
        else {
            //print(line.components(separatedBy: ",")[0].components(separatedBy: "-")[0])
            start11 = Int(line.components(separatedBy: ",")[0].components(separatedBy: "-")[0]) ?? 0
            start12 = Int(line.components(separatedBy: ",")[0].components(separatedBy: "-")[1]) ?? 0
            start21 = Int(line.components(separatedBy: ",")[1].components(separatedBy: "-")[0]) ?? 0
            start22 = Int(line.components(separatedBy: ",")[1].components(separatedBy: "-")[1]) ?? 0
            
            print(start11)
            print(start12)
            print(start21)
            print(start22)
            
            if (start11 <= start21 && start12 >= start22) {
                print("yes")
                solution += 1
            } else if (start21 <= start11 && start22 >= start12) {
                print("yes")
                solution += 1
            } else {
                print("no")
            }
        }
    }
    
    return solution
}

func day4part2solution(input: String)->Int {
    var solution = 0
    
    return solution
}
