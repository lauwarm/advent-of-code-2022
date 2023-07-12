//
//  Day5Solver.swift
//  advent-of-code-2022
//
//  Created by Fabian on 25.05.23.
//

import Foundation

func day5part1solution(input: String)->String {
    var solution = "0"
    
    let lines = input.components(separatedBy: "\n")
    
    var stackArray = [Character]()
    var moveArray = [Int]()
    
    var anArray = [[Character]]()

    /*
     [T] [s] [s] [s] [P] [s] [J] [s] [s]
     [F]     [S]     [T]     [R]     [B]
     [V]     [M] [H] [S]     [F]     [R]
     [Z]     [P] [Q] [B]     [S] [W] [P]
     [C]     [Q] [R] [D] [Z] [N] [H] [Q]
     [W] [B] [T] [F] [L] [T] [M] [F] [T]
     [S] [R] [Z] [V] [G] [R] [Q] [N] [Z]
     [Q] [Q] [B] [D] [J] [W] [H] [R] [J]
      1   2   3   4   5   6   7   8   9

     move 3 from 8 to 2
     move 3 from 1 to 5

     3 7 11 15 19 23 27 31
     
     eine zeile fängt entweder mit leerzeichen an oder mit [ an
     eine spalte... also zum beispiel die "1"... ist 4 zeichen breit...
     am ende hört es immer mit \n... oder auch nicht... am ende hab ich nur 3 zeichen anstatt 3+leerzeichen
     
     wie würde das array aussehen?
     T s s s P s J s s
     F s S s T s R s B
     V s M H S s F s R
     Z s P Q B s S W P
     ...
     
     1: T F V Z C W S Q
     2: s s s s s B R Q
     3: s S M P Q T Z B
     4: s s H Q R F V D
     5: P T S B D L G J
     6: s s s s Z T R W
     7: J R F S N M Q H
     8: s s s W H F N R
     9: s B R P Q T Z J
     
     anArray:   ["T"]["s"]["s"]["s"]["P"]["s"]["J"]["s"]["s"]
                ["F"]["s"]["S"]["s"]["T"]["s"]["R"]["s"]["B"]
                ["V"]["s"]["M"]["H"]["S"]["s"]["F"]["s"]["R"]
                ["Z"]["s"]["P"]["Q"]["B"]["s"]["S"]["W"]["P"]
                ["C"]["s"]["Q"]["R"]["D"]["Z"]["N"]["H"]["Q"]
                ["W"]["B"]["T"]["F"]["L"]["T"]["M"]["F"]["T"]
                ["S"]["R"]["Z"]["V"]["G"]["R"]["Q"]["N"]["Z"]
                ["Q"]["Q"]["B"]["D"]["J"]["W"]["H"]["R"]["J"]

    c:          [
                    "T", "F", "V", "Z", "C", "W", "S", "Q",
                    "s", "s", "s", "s", "s", "B", "R", "Q",
                    "s", "S", "M", "P", "Q", "T", "Z", "B",
                    "s", "s", "H", "Q", "R", "F", "V", "D",
                    "P", "T", "S", "B", "D", "L", "G", "J",
                    "s", "s", "s", "s", "Z", "T", "R", "W",
                    "J", "R", "F", "S", "N", "M", "Q", "H",
                    "s", "s", "s", "W", "H", "F", "N", "R",
                    "s", "B", "R", "P", "Q", "T", "Z", "J"
                ]
     
     anArray:   [
                    ["T", "F", "V", "Z", "C", "W", "S", "Q"],
                    ["s", "s", "s", "s", "s", "B", "R", "Q"],
                    ["s", "S", "M", "P", "Q", "T", "Z", "B"],
                    ["s", "s", "H", "Q", "R", "F", "V", "D"],
                    ["P", "T", "S", "B", "D", "L", "G", "J"],
                    ["s", "s", "s", "s", "Z", "T", "R", "W"],
                    ["J", "R", "F", "S", "N", "M", "Q", "H"],
                    ["s", "s", "s", "W", "H", "F", "N", "R"],
                    ["s", "B", "R", "P", "Q", "T", "Z", "J"]
                ]
     
     1 1 1
     2 2 2
     3 3 3
     
     1 2 3
     1 2 3
     1 2 3
     
     s D s
     N C s
     Z M P
     
     s N Z
     D C M
     s s P
     */
 
//    91 84 93 32 32 32 32 32 32 32 32 32 32 32 32 32 91 80 93 32 32 32 32 32 91 74 93 32 32 32 32 32 32 32 32
//    [  T  ]  s  s  s  s  s  s  s  s  s  s  s  s  s  [  P  ]  s  s  s  s  s  [  J  ]  s  s  s  s  s  s  s  s
//    print(lines[0])
    
    for ascii in lines[0].data(using: .ascii, allowLossyConversion: true)!{ // DEBUG
        //print(ascii)
    }
    
    var counter = 0
    var zeile = 0
    var tmp = 0 // DEBUG
    
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
                    //print("ende") // DEBUG
                    zeile += 1
                }
            } else {
                if (word.asciiValue == 109) {
                    zeile += 1
                }
                else if (zeile >= 2) {
                    if (word.asciiValue ?? 0 > 47 && word.asciiValue ?? 0 < 58) {
                        //moveArray.append(word.wholeNumberValue ?? -1)
                    }
                }
            }
        }
        //print("line: ", line) // DEBUG
        if (line.contains("move")) {
            //print(line.split(separator: " ")[1]) // DEBUG
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
    
    //print(anArray) // DEBUG
    
    // reverse the array
    for a in 0..<anArray.count {
        anArray[a].reverse()
    }
    
    for a in 0..<anArray.count-1 { // DEBUG
        //print(anArray[a])
    }

    //print(anArray[0][0]) // DEBUG
    

    for a in stackArray { // DEBUG
     //   print("anArray: ",  a)
    }
    
    for b in moveArray { // DEBUG
   //     print("moveArray: ", b)
    }
    
    //print("anArray 8: ", anArray[7]) // DEBUB
    //print("anArray 2: ", anArray[1]) // DEBUG
    
    //print("anArray Size: ", anArray[1].count) // DEBUG
    
    /*
    var tmp1 = 0
    var tmp2 = 0
    for a in 0...2 {
        if (anArray[1][7-a] == "s") {
            tmp1 += 1
        }
        if (anArray[7][7-a] == "s") {
            tmp2 += 1
        }
    }
    
    for a in 0...2 {
        anArray[1][7-tmp1+a] = anArray[7][7-tmp2-a]
    }
    */
    /*
    print("anArray Count: ", anArray.count)
    print("anArray[] Count: ", anArray[0].count)
    print("anArray[] Remove: ", anArray[0].removeLast())
    print("anArray[]: ", anArray[0])
    print("anArray[] Count: ", anArray[0].count)
    
    for a in 0..<anArray.count {
        print("anArray Count: ", anArray.count)
        print("anArray[] Count: ", anArray[a].count)
    }
     */
    
    // Remove all "s" from the Array
    for a in 0..<anArray.count {
        for b in 0..<anArray[a].count {
            if (anArray[a][7-b] == "s") {
                anArray[a].removeLast()
                //print("Array FOR: ", anArray[a])
            }
        }
    }
    
    //print("moveArray: ", moveArray)
    // Execute moves
    
    //print((anArray[1][anArray[1].count-1]))
    // (anArray[moveArray[a+1]][anArray[moveArray[a+1]].count-1])
    //              7                       7
    
    //print(anArray[7][anArray[7].count-1])
    print(anArray)
    
    /*
     R N F H W
     Q R B
     =>
     R N
     Q R B F H W
     */
    for a in stride(from: 0, to: moveArray.count-1, by: 3) {
        for _ in 0..<moveArray[a] {
            var von = moveArray[a+1]
            var nach = moveArray[a+2]
            var tmp3 = anArray[von-1].count-1
            
            if (anArray[moveArray[a+1]-1].isEmpty == true) {
                print("empty: ", anArray)
            } else {
                if (tmp3 < 0) {
                    print("tmp3 empty")
                } else {
                    if(anArray[moveArray[a+1]-1].isEmpty == true) {
                        print("wieder empty")
                    } else {
                        print("tmp1: ", anArray[von-1])
                        print("tmp2: ", anArray[nach-1])
                        anArray[nach-1].append(anArray[von-1][tmp3])
                        anArray[moveArray[a+1]-1].removeLast()
                    }
                }
            }
        }
    }
    
    //print(anArray)
    
    for a in anArray {
        print(a)
    }
    
    //print(anArray[0]) BZLVHBWQF
    //print(anArray[0][anArray[0].count-1])
    return solution
}

func day5part2solution(input: String)->Int {
    var solution = 0
    
    return solution
}
