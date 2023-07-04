//
//  Day3Solver.swift
//  advent-of-code-2022
//
//  Created by Fabian on 26.02.23.
//

import Foundation

func day3part1solution(input: String)->Int {
    var solution = 0
    
    let lines = input.components(separatedBy: "\n")
    
    let werte:[Character:Int] = ["a":1, "b":2, "c":3, "d":4, "e":5, "f":6, "g":7, "h":8, "i":9, "j":10, "k":11, "l":12, "m":13, "n":14, "o":15, "p":16, "q":17, "r":18, "s":19, "t":20, "u":21, "v":22, "w":23, "x":24, "y":25, "z":26, "A":27, "B":28, "C":29, "D":30, "E":31, "F":32, "G":33, "H":34, "I":35, "J":36, "K":37, "L":38, "M":39, "N":40, "O":41, "P":42, "Q":43, "R":44, "S":45, "T":46, "U":47, "V":48, "W":49, "X":50, "Y":51, "Z":52]
    
    var doubleValues = Array<Character>()
    var locking = 0
    
    for line in lines {
        if (line.count == 0) {
            print("Zero")
        }
        else {
            let word = Array(line)
            for i in 0..<(word.count/2){
                for j in (word.count/2)..<word.endIndex {
                    let compare = word[i] == word[j]
                    if (compare == true && locking == 0) {
                        doubleValues.append(word[j])
                        locking = 1
                    }
                }
                
            }
            locking = 0
        }
    }
    
    for a in 0..<(doubleValues.count) {
        for (key, value) in werte {
            if doubleValues[a] == key {
                solution += value;
            }
        }
    }
    
    return solution
}


func day3part2solution(input: String)->Int {
    let solution = 0
    
    return solution
}
