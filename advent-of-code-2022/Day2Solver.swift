//
//  Day2Solver.swift
//  advent-of-code-2022
//
//  Created by Fabian on 17.12.22.
//

import Foundation

func day2part1solution(input: String)->Int {
    var solution = 0
    
    let lines = input.components(separatedBy: "\n")

    for line in lines {
        if (line.first == "A") { //ROCK
            if (line.last == "X") { //ROCK 1 + DRAW 3
                solution += 4
            }
            else if (line.last == "Y") { //PAPER 2 + WIN 6
                solution += 8
            }
            else if (line.last == "Z") { //SCISSORS 3 + LOSS 0
                solution += 3
            }
        }
        else if (line.first == "B") { //PAPER
            if (line.last == "X") { //ROCK 1 + LOSS 0
                solution += 1
            }
            else if (line.last == "Y") { //PAPER 2 + DRAW 3
                solution += 5
            }
            else if (line.last == "Z") { //SCISSORS 3 + WIN 6
                solution += 9
            }
        }
        else if (line.first == "C") { //SCISSORS
            if (line.last == "X") { //ROCK 1 + WIN 6
                solution += 7
            }
            else if (line.last == "Y") { //PAPER 2 + LOSS 0
                solution += 2
            }
            else if (line.last == "Z") { //SCISSORS 3 + DRAW 3
                solution += 6
            }
        }
    }
    
    return solution
}


func day2part2solution(input: String)->Int {
    let solution = 0
    
    return solution
}
