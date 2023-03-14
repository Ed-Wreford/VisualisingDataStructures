//
//  Stack.swift
//  VisualisingDataStructures
//
//  Created by Ed Wreford on 14/03/2023.
//

import Foundation

class Stack: ObservableObject {
    
    var items: [Int] = []

    
    func push() {
        let randomNum = Int.random(in: 1...1000)
        self.items.insert(randomNum, at: items.count)
    }
    
    func pop() -> Int? {
        if items.isEmpty {
            return nil
        } else {
            return self.items.removeLast()
        }
    }
    
    func peek() -> Int? {
        if self.items.count > 0 {
            return self.items[items.count-1]
        } else {
            return nil
        }
        
    }
    
    func  displayItems() -> String {
        var forDisplaying = ""
        for item in items {
            let stringOfItem = String(item)
            if forDisplaying == "" {
                forDisplaying = stringOfItem
            } else {
                forDisplaying = forDisplaying + ", " + stringOfItem
            }
        }
        return forDisplaying
    }
    
}
