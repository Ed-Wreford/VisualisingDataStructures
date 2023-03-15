//
//  LinkedListView.swift
//  VisualisingDataStructures
//
//  Created by Ed Wreford on 14/03/2023.
//

import SwiftUI

struct LinkedListView: View {
    @State private var linkedList = LinkedList()
    @State private var stuffForDisplaying = ""
    
    var body: some View {
        VStack {
            Text("The linked list is: \(stuffForDisplaying)")
            Form {
                Button("ADD", action: { linkedList.add(); displayTheList() })
                Button("REMOVE RANDOM ITEM", action: { linkedList.remove(); displayTheList() })
            }
        }

    }
    
    func displayTheList() {
        stuffForDisplaying = linkedList.displayList()
    }
    
}

struct LinkedListView_Previews: PreviewProvider {
    static var previews: some View {
        LinkedListView()
    }
}
