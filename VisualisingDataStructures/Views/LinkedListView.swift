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
    @State private var itemToAdd: String = ""
    @State private var itemToRemove: String = ""
    
    var body: some View {
        VStack {
            Text("\(stuffForDisplaying)")
            Form {
                Button("ADD", action: { linkedList.add(itemForAdding: Int(itemToAdd) ?? 0); displayTheList() })
                Button("REMOVE RANDOM ITEM", action: { linkedList.remove(itemForRemoving: Int(itemToRemove) ?? 0); displayTheList() })
                TextField(
                    "Enter the number to be added: ",
                    text: $itemToAdd
                    )
                TextField(
                    "Enter the which part for the list you want to delete (first item is 0): ",
                    text: $itemToRemove
                )
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
