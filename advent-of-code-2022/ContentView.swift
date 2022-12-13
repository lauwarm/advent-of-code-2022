//
//  ContentView.swift
//  advent-of-code-2022
//
//  Created by Fabian on 13.12.22.
//

import SwiftUI



struct ContentView: View {
    @State var filename = "Filename"
    @State var showFileChooser = false
    
    @State var contents = "nil"
    
    var body: some View {
        VStack {
            Text("Welcome to Advent of Code 2022!")
                .font(.title)
            Button("Open Puzzle") {
                let panel = NSOpenPanel()
                panel.allowsMultipleSelection = false
                panel.canChooseDirectories = false
                if panel.runModal() == .OK {
                    self.filename = panel.url?.lastPathComponent ?? "<none>"
                    do {
                        contents = try String(contentsOf: panel.url!)
                        
                        let _ = print(contents)
                    } catch {
                        print("error", error)
                    }
                }
            }
            Text(contents)
        }
        .padding()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
