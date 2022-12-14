//
//  NavigationView.swift
//  advent-of-code-2022
//
//  Created by Fabian on 13.12.22.
//

import SwiftUI

struct SidebarView: View {
    var body: some View {
        NavigationView {
            List {
                Text("Day 1")
                Group {
                    NavigationLink(destination: Day1View()) {
                        Text("Calorie Counting - 1").padding([.leading], 20)
                    }
                    NavigationLink(destination: ContentView()) {
                        Text("Calorie Counting - 2").padding([.leading], 20)
                    }
                }
                
                Text("Day 2")
                Group {
                    NavigationLink(destination: ContentView()) {
                        Label("Rock Paper Scissors - 1", systemImage: "")
                    }
                    NavigationLink(destination: ContentView()) {
                        Label("Rock Paper Scissors - 2", systemImage: "")
                    }
                }
                
                Text("Day 3")
                Group {
                    NavigationLink(destination: ContentView()) {
                        Label("Rucksack Reorganization - 1", systemImage: "")
                    }
                    NavigationLink(destination: ContentView()) {
                        Label("Rucksack Reorganization - 2", systemImage: "")
                    }
                }
                
                Text("Day 4")
                Group {
                    NavigationLink(destination: ContentView()) {
                        Label("Camp Cleanup - 1", systemImage: "")
                    }
                    NavigationLink(destination: ContentView()) {
                        Label("Camp Cleanup - 2", systemImage: "")
                    }
                }
                
                Text("Day 5")
                Group {
                    NavigationLink(destination: ContentView()) {
                        Label("Supply Stacks - 1", systemImage: "")
                    }
                    NavigationLink(destination: ContentView()) {
                        Label("Supply Stacks - 2", systemImage: "")
                    }
                }
            }
        }
    }
}

struct SidebarView_Previews: PreviewProvider {
    static var previews: some View {
        SidebarView()
    }
}
