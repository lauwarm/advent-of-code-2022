//
//  Day1Part1View.swift
//  advent-of-code-2022
//
//  Created by Fabian on 14.12.22.
//

import SwiftUI

struct Day1View: View {
    @State var filename = "Filename"
    @State var showFileChooser = false
    
    @State var contents = "nil"
    
    @State var day1part1solution = 0
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
            
            Button("Open Puzzle") {
                let panel = NSOpenPanel()
                panel.allowsMultipleSelection = false
                panel.canChooseDirectories = false
                if panel.runModal() == .OK {
                    self.filename = panel.url?.lastPathComponent ?? "<none>"
                    do {
                        contents = try String(contentsOf: panel.url!)
                        
                        let _ = print(contents)
                       
                        day1part1solution = day1solution1(input: contents)
                        
                    } catch {
                        print("error", error)
                    }
                }
            }
            Text("\(day1part1solution)")
        }
    }
}

struct Day1Part1View_Previews: PreviewProvider {
    static var previews: some View {
        Day1View()
    }
}
