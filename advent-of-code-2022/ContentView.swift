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
        }
        .padding()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
