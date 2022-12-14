//
//  Day1Part2View.swift
//  advent-of-code-2022
//
//  Created by Fabian on 14.12.22.
//

import SwiftUI

struct Day1Part2View: View {
    @State var filename = "Filename"
    @State var showFileChooser = false
    
//    @State var contents = "nil"
    
    @State var solution = 0
    
    var body: some View {
        VStack {
            Text("Welcome to Day 1 Part 2!")
            Button("Open Puzzle Input") {
                let panel = NSOpenPanel()
                panel.allowsMultipleSelection = false
                panel.canChooseDirectories = false
                if panel.runModal() == .OK {
                    self.filename = panel.url?.lastPathComponent ?? "<none>"
                    do {
                        solution = day1part2solution(input: try String(contentsOf: panel.url!))
                    } catch {
                        print("error", error)
                    }
                }
            }
            Text("\(solution)")
        }
    }
}

struct Day1Part2View_Previews: PreviewProvider {
    static var previews: some View {
        Day1Part2View()
    }
}
