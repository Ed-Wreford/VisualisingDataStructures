//
//  ContentView.swift
//  VisualisingDataStructures
//
//  Created by Ed Wreford on 14/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Stack", destination: StackView())
            NavigationLink("Queue", destination: QueueView())
            NavigationLink("Linked List", destination: LinkedListView())
            NavigationLink("Tree", destination: TreeView())
                .navigationTitle("Home Page")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
