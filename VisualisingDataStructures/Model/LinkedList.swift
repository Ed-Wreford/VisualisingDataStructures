//
//  LinkedList.swift
//  VisualisingDataStructures
//
//  Created by Ed Wreford on 15/03/2023.
//

import Foundation

struct LinkedList {
    
    var theList: [Node] = []
    
    mutating func add() {
        if theList.isEmpty {
            theList.append(Node(head: 0, pointer: nil, data: Int.random(in: 1...1000)))
        } else {
            var previousHead: Int = theList[theList.count - 1].head
            var newHead: Int = previousHead + 1
            var previousData: Int = theList[theList.count - 1].data
            // adds new item to linked list
            theList.insert(Node(head: newHead, pointer: nil, data: Int.random(in: 1...1000)), at: theList.count)
            // changes pointer of previous item
            theList[theList.count - 2] = (Node(head: previousHead, pointer: newHead, data: previousData))
            
        }
    }
    
    func remove() {
        
    }
    
    func displayList() -> String {
        var forDisplaying = ""
        for node in theList {
            if forDisplaying == "" {
                forDisplaying = "\(node)"
            } else {
                forDisplaying = forDisplaying + ", \(node)"
            }
            
        }
        return forDisplaying
        
    }
    
}
