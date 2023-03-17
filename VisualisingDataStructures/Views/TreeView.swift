//
//  TreeView.swift
//  VisualisingDataStructures
//
//  Created by Ed Wreford on 17/03/2023.
//

import SwiftUI

struct TreeView: View {
    
    @State private var tree = Tree()
    @State private var stuffForDisplaying: String = ""
    
    var body: some View {
        VStack {
            Text("The tree is: \(stuffForDisplaying)")
            Form {
                Button("ADD", action: { tree.add(); displayTheList() })
            }
        }
    }
        
    func displayTheList() {
        stuffForDisplaying = tree.displayTree()
    }
}

struct TreeView_Previews: PreviewProvider {
    static var previews: some View {
        TreeView()
    }
}
