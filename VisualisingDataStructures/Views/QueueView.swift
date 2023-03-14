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
    
    var body: some View {
        VStack {
            Text("The queue is: \(stuffForDisplaying)")
            Form {
                Button("PUSH", action: { queue.push(); displayTheList() })
                Button("POP", action: { getPop(); displayTheList() })
            }
        }
        
    }
    
    func displayTheList(){
        stuffForDisplaying = queue.display()
    }
    
    func getPop() {
        poppedItem = queue.pop() ?? 0
    }
}

struct QueueView_Previews: PreviewProvider {
    static var previews: some View {
        QueueView()
    }
}
