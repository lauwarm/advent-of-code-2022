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
                
                Group {
                    Text("Day 1")
                    Group {
                        NavigationLink(destination: Day1Part1View()) {
                            Text("Calorie Counting - 1").padding([.leading], 20)
                        }
                        NavigationLink(destination: Day1Part2View()) {
                            Text("Calorie Counting - 2").padding([.leading], 20)
                        }
                    }
                    Text("Day 2")
                    Group {
                        NavigationLink(destination: Day2Part1View()) {
                            Text("Rock Paper Scissors - 1").padding([.leading], 20)
                        }
                        NavigationLink(destination: Day2Part2View()) {
                            Text("Rock Paper Scissors - 2").padding([.leading], 20)
                        }
                    }
                    Text("Day 3")
                    Group {
                        NavigationLink(destination: Day3Part1View()) {
                            Text("Rucksack Reorganization - 1").padding([.leading], 20)
                        }
                        NavigationLink(destination: Day3Part2View()) {
                            Text("Rucksack Reorganization - 2").padding([.leading], 20)
                        }
                    }
                    Text("Day 4")
                    Group {
                        NavigationLink(destination: Day4Part1View()) {
                            Text("Camp Cleanup - 1").padding([.leading], 20)
                        }
                        NavigationLink(destination: Day4Part2View()) {
                            Text("Camp Cleanup - 2").padding([.leading], 20)
                        }
                    }
                    Text("Day 5")
                    Group {
                        NavigationLink(destination: Day5Part1View()) {
                            Text("Supply Stacks - 1").padding([.leading], 20)
                        }
                        NavigationLink(destination: Day5Part2View()) {
                            Text("Supply Stacks - 2").padding([.leading], 20)
                        }
                    }
                }
                
                Group {
                    Text("Day 6")
                    Group {
                        NavigationLink(destination: Day6Part1View()) {
                            Text("Tuning Trouble - 1").padding([.leading], 20)
                        }
                        NavigationLink(destination: Day6Part2View()) {
                            Text("Tuning Trouble - 2").padding([.leading], 20)
                        }
                    }
                    Text("Day 7")
                    Group {
                        NavigationLink(destination: Day7Part1View()) {
                            Text("No Space Left On Device - 1").padding([.leading], 20)
                        }
                        NavigationLink(destination: Day7Part2View()) {
                            Text("No Space Left On Device - 2").padding([.leading], 20)
                        }
                    }
                    Text("Day 8")
                    Group {
                        NavigationLink(destination: Day8Part1View()) {
                            Text("Treetop Tree House - 1").padding([.leading], 20)
                        }
                        NavigationLink(destination: Day8Part2View()) {
                            Text("Treetop Tree House - 2").padding([.leading], 20)
                        }
                    }
                    Text("Day 9")
                    Group {
                        NavigationLink(destination: Day9Part1View()) {
                            Text("Rope Bridge - 1").padding([.leading], 20)
                        }
                        NavigationLink(destination: Day9Part2View()) {
                            Text("Rope Bridge - 2").padding([.leading], 20)
                        }
                    }
                    Text("Day 10")
                    Group {
                        NavigationLink(destination: Day10Part1View()) {
                            Text("Cathode-Ray Tube - 1").padding([.leading], 20)
                        }
                        NavigationLink(destination: Day10Part2View()) {
                            Text("Cathode-Ray Tube - 2").padding([.leading], 20)
                        }
                    }
                }
                
                Group {
                    Text("Day 11")
                    Group {
                        NavigationLink(destination: Day11Part1View()) {
                            Text("Monkey in the Middle - 1").padding([.leading], 20)
                        }
                        NavigationLink(destination: Day11Part2View()) {
                            Text("Monkey in the Middle - 2").padding([.leading], 20)
                        }
                    }
                    Text("Day 12")
                    Group {
                        NavigationLink(destination: Day12Part1View()) {
                            Text("Hill Climbing Algorithm - 1").padding([.leading], 20)
                        }
                        NavigationLink(destination: Day12Part2View()) {
                            Text("Hill Climbing Algorithm - 2").padding([.leading], 20)
                        }
                    }
                    Text("Day 13")
                    Group {
                        NavigationLink(destination: Day13Part1View()) {
                            Text("Distress Signal - 1").padding([.leading], 20)
                        }
                        NavigationLink(destination: Day13Part2View()) {
                            Text("Distress Signal - 2").padding([.leading], 20)
                        }
                    }
                    Text("Day 14")
                    Group {
                        NavigationLink(destination: Day14Part1View()) {
                            Text("Regolith Reservoir - 1").padding([.leading], 20)
                        }
                        NavigationLink(destination: Day14Part2View()) {
                            Text("Regolith Reservoir - 2").padding([.leading], 20)
                        }
                    }
                    Text("Day 15")
                    Group {
                        NavigationLink(destination: Day15Part1View()) {
                            Text("Beacon Exclusion Zone - 1").padding([.leading], 20)
                        }
                        NavigationLink(destination: Day15Part2View()) {
                            Text("Beacon Exclusion Zone - 2").padding([.leading], 20)
                        }
                    }
                }
                
                Group {
                    Text("Day 16")
                    Group {
                        NavigationLink(destination: Day16Part1View()) {
                            Text("Proboscidea Volcanium - 1").padding([.leading], 20)
                        }
                        NavigationLink(destination: Day16Part2View()) {
                            Text("Proboscidea Volcanium - 2").padding([.leading], 20)
                        }
                    }
                    Text("Day 17")
                    Group {
                        NavigationLink(destination: Day17Part1View()) {
                            Text("Pyroclastic Flow - 1").padding([.leading], 20)
                        }
                        NavigationLink(destination: Day17Part2View()) {
                            Text("Pyroclastic Flow - 2").padding([.leading], 20)
                        }
                    }
                    Text("Day 18")
                    Group {
                        NavigationLink(destination: Day18Part1View()) {
                            Text("Boiling Boulders - 1").padding([.leading], 20)
                        }
                        NavigationLink(destination: Day18Part2View()) {
                            Text("Boiling Boulders - 2").padding([.leading], 20)
                        }
                    }
                    Text("Day 19")
                    Group {
                        NavigationLink(destination: Day19Part1View()) {
                            Text("Not Enough Minerals - 1").padding([.leading], 20)
                        }
                        NavigationLink(destination: Day19Part2View()) {
                            Text("Not Enough Minerals - 2").padding([.leading], 20)
                        }
                    }
                    Text("Day 20")
                    Group {
                        NavigationLink(destination: Day20Part1View()) {
                            Text("Grove Positioning System - 1").padding([.leading], 20)
                        }
                        NavigationLink(destination: Day20Part2View()) {
                            Text("Grove Positioning System - 2").padding([.leading], 20)
                        }
                    }
                }
                
                Group {
                    Text("Day 21")
                    Group {
                        NavigationLink(destination: Day1Part1View()) {
                            Text("Monkey Math - 1").padding([.leading], 20)
                        }
                        NavigationLink(destination: Day1Part2View()) {
                            Text("Monkey Math - 2").padding([.leading], 20)
                        }
                    }
                    Text("Day 22")
                    Group {
                        NavigationLink(destination: Day1Part1View()) {
                            Text("Monkey Map - 1").padding([.leading], 20)
                        }
                        NavigationLink(destination: Day1Part2View()) {
                            Text("Monkey Map - 2").padding([.leading], 20)
                        }
                    }
                    Text("Day 23")
                    Group {
                        NavigationLink(destination: Day1Part1View()) {
                            Text("Unstable Diffusion - 1").padding([.leading], 20)
                        }
                        NavigationLink(destination: Day1Part2View()) {
                            Text("Unstable Diffusion - 2").padding([.leading], 20)
                        }
                    }
                    Text("Day 24")
                    Group {
                        NavigationLink(destination: Day1Part1View()) {
                            Text("Blizzard Basin - 1").padding([.leading], 20)
                        }
                        NavigationLink(destination: Day1Part2View()) {
                            Text("Blizzard Basin - 2").padding([.leading], 20)
                        }
                    }
                    Text("Day 25")
                    Group {
                        NavigationLink(destination: Day1Part1View()) {
                            Text("Full of Hot Air - 1").padding([.leading], 20)
                        }
                        NavigationLink(destination: Day1Part2View()) {
                            Text("Full of Hot Air - 2").padding([.leading], 20)
                        }
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
