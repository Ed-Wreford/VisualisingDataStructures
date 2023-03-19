//
//  Queue.swift
//  VisualisingDataStructures
//
//  Created by Ed Wreford on 14/03/2023.
//

import Foundation

class Queue: ObservableObject {
    
    var items: [Int] = []
    
    func push(itemToBePushed: Int) -> Int {
        self.items.insert(itemToBePushed, at: items.count)
        return itemToBePushed
    }
    
    func pop(anArray: [Int]) -> Int? {
        if items.isEmpty {
            return nil
        } else {
            return self.items.removeFirst()
        }
    }
    
    func display(anArray: [Int]) -> String {
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
