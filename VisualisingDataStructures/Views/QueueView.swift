//
//  QueueView.swift
//  VisualisingDataStructures
//
//  Created by Ed Wreford on 14/03/2023.
//

import SwiftUI

struct QueueView: View {
    @State private var queue = Queue()
    @State private var poppedItem: Int  = 0
    @State private var stuffForDisplaying: String = ""
    @State private var itemToPush: String  = ""
    
    var body: some View {
        VStack {
            Text("The queue is: \(stuffForDisplaying)")
            Form {
                Button("PUSH", action: { queue.push(itemToBePushed: Int(itemToPush) ?? 0); displayTheList() })
                Button("POP", action: { getPop(); displayTheList() })
                TextField(
                    "Enter the number to be pushed: ",
                    text: $itemToPush
                    )
            }
        }
        
    }
    
    func displayTheList(){
        stuffForDisplaying = queue.display(anArray: queue.items)
    }
    
    func getPop() {
        poppedItem = queue.pop(anArray: queue.items) ?? 0
    }
}

struct QueueView_Previews: PreviewProvider {
    static var previews: some View {
        QueueView()
    }
}
