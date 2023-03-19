//
//  Stack.swift
//  VisualisingDataStructures
//
//  Created by Ed Wreford on 14/03/2023.
//

import Foundation

class Stack: ObservableObject {
    
    var items: [Int] = []

    
    func push(itemToBePushed: Int) -> Int {
        self.items.insert(itemToBePushed, at: items.count)
        return itemToBePushed
    }
    
    func pop(anArray: [Int]) -> Int? {
        if items.isEmpty {
            return nil
        } else {
            return items.removeLast()
        }
    }
    
    func peek(anArray: [Int]) -> Int? {
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
