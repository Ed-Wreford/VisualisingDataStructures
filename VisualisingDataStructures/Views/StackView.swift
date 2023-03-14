//
//  ContentView.swift
//  VisualisingDataStructures
//
//  Created by Ed Wreford on 14/03/2023.
//

import SwiftUI

struct StackView: View {
    @State private var stack = Stack()
    @State private var poppedItem: Int  = 0
    @State private var peekedItem: String = ""
    @State private var stuffForDisplaying: String = ""
    
    var body: some View {
        VStack {
            Text("The stack is: \(stuffForDisplaying)")
            Text("The peeked item is: \(peekedItem)")
            Form {
                Button("PUSH", action: { stack.push(); displayTheList() })
                Button("POP", action: { getPop(); displayTheList() })
                Button("PEEK", action: { getPeek() })
            }
        }
        
    }
    
    func displayTheList(){
        stuffForDisplaying = stack.displayItems()
    }
    
    func getPop() {
        poppedItem = stack.pop() ?? 0
    }
    
    func getPeek() {
        peekedItem = String(stack.peek() ?? 0)
    }
    
}

struct StackView_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}
