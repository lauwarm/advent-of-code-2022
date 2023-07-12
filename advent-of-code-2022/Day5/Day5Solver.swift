//
//  Day5Solver.swift
//  advent-of-code-2022
//
//  Created by Fabian on 25.05.23.
//

import Foundation

func day5part1solution(input: String)->String {
    var solution = ""
    
    let lines = input.components(separatedBy: "\n")
    
    var stackArray = [Character]()
    var moveArray = [Int]()
    var anArray = [[Character]]()

    var counter = 0
    var zeile = 0
    
    // convert input file into two arrays... one for the stacks of crates... the other for the rearrangement procedure
    for line in lines {
        for word in line {
            if (zeile == 0) {
                if (word.asciiValue == 32) {
                    counter += 1
                    if (counter == 4) {
                        stackArray.append("s")
                        counter = 0
                    }
                } else if (word.asciiValue == 91) {
                } else if (word.asciiValue == 93) {
                    counter = 0
                } else if (word.asciiValue ?? 0 > 64 && word.asciiValue ?? 0 < 91){
                    stackArray.append(word)
                } else if (word.asciiValue == 49 || word.asciiValue == 109){
                    zeile += 1
                }
            } else {
                print("done")
            }
        }
        if (line.contains("move")) {
            moveArray.append(Int(line.split(separator: " ")[1]) ?? -1)
            moveArray.append(Int(line.split(separator: " ")[3]) ?? -1)
            moveArray.append(Int(line.split(separator: " ")[5]) ?? -1)
        }
    }
    
    
    var c = [Character]()
    
    // shuffle the array into a 2d array
    for a in 0..<stackArray.count/8 {
        for b in 0..<(stackArray.count/8)-1{
            c.append(stackArray[a+b*9])
        }
        anArray.append(c)
        c.removeAll()
    }
    
    // reverse the array
    for a in 0..<anArray.count {
        anArray[a].reverse()
    }
    
    // Remove all "s" from the Array
    for a in 0..<anArray.count {
        for b in 0..<anArray[a].count {
            if (anArray[a][7-b] == "s") {
                anArray[a].removeLast()
            }
        }
    }

    for a in stride(from: 0, to: moveArray.count-1, by: 3) {
        for _ in 0..<moveArray[a] {
            let von = moveArray[a+1]
            let nach = moveArray[a+2]
            let tmp3 = anArray[von-1].count-1
            
            if (anArray[moveArray[a+1]-1].isEmpty == true) {
                print("empty: ", anArray)
            } else {
                if (tmp3 < 0) {
                    print("tmp3 empty")
                } else {
                    if(anArray[moveArray[a+1]-1].isEmpty == true) {
                        print("wieder empty")
                    } else {
                        anArray[nach-1].append(anArray[von-1][tmp3])
                        anArray[moveArray[a+1]-1].removeLast()
                    }
                }
            }
        }
    }
    
    for a in anArray {
        solution.append(a.last!)
    }

    return solution
}

func day5part2solution(input: String)->Int {
    var solution = 0
    
    return solution
}
