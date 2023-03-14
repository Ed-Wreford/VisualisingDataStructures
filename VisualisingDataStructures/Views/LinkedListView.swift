//
//  LinkedListView.swift
//  VisualisingDataStructures
//
//  Created by Ed Wreford on 14/03/2023.
//

import SwiftUI

struct LinkedListView: View {
    @State private var linkedList = LinkedList()
    @State private var stuffForDisplaying: String = ""
    @State private var removedItem: String = ""
    
    var body: some View {
        VStack {
            Text("The linked list is: \(stuffForDisplaying)")
            Form {
                Button("ADD", action: { linkedList.add(); displayTheList() })
                Button("REMOVE", action: { getRemove(); displayTheList() })
            }
        }

    }
    
    func displayTheList() {
        
    }
    
    func getRemove() {
        
    }
}

struct LinkedListView_Previews: PreviewProvider {
    static var previews: some View {
        LinkedListView()
    }
}
