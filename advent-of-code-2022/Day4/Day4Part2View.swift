//
//  Day4Part2.swift
//  advent-of-code-2022
//
//  Created by Fabian on 25.05.23.
//

import SwiftUI

struct Day4Part2View: View {
    @State var filename = "Filename"
    @State var showFileChooser = false
    
    @State var solution = 0
    
    var body: some View {
        VStack {
            Text("Welcome to Day 4 Part 2!")
            Button("Open Puzzle Input") {
                let panel = NSOpenPanel()
                panel.allowsMultipleSelection = false
                panel.canChooseDirectories = false
                if panel.runModal() == .OK {
                    self.filename = panel.url?.lastPathComponent ?? "<none>"
                    do {
                        //contents = try String(contentsOf: panel.url!)
                        //let _ = print(contents)
                        solution = day4part2solution(input: try String(contentsOf: panel.url!))
                        
                    } catch {
                        print("error", error)
                    }
                }
            }
            Text("The Solution: \(solution)")
        }
    }
}

struct Day4Part2_Previews: PreviewProvider {
    static var previews: some View {
        Day4Part2View()
    }
}
