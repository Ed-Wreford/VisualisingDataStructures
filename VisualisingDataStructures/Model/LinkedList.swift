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
            let previousHead: Int = theList[theList.count - 1].head
            let newHead: Int = previousHead + 1
            let previousData: Int = theList[theList.count - 1].data
            // adds new item to linked list
            theList.insert(Node(head: newHead, pointer: nil, data: Int.random(in: 1...1000)), at: theList.count)
            // changes pointer of previous item
            theList[theList.count - 2] = (Node(head: previousHead, pointer: newHead, data: previousData))
            
        }
    }
    
    mutating func remove() {
        let randomChoice = Int.random(in: 0...theList.count - 1)
        if randomChoice != 0 {
            let previousHead: Int = theList[randomChoice - 1].head
            let previousData: Int = theList[randomChoice - 1].data
            let newPointer = theList[randomChoice].pointer
            // changes previous item
            theList[randomChoice - 1] = (Node(head: previousHead,pointer: newPointer, data: previousData))
            // deletes choosen node
            theList.remove(at: randomChoice)
        } else {
            theList.remove(at: randomChoice)
        }
    }
    
    func displayList() -> String {
        var forDisplaying = ""
        if theList.isEmpty {
            return forDisplaying
        } else {
            for index in 0...(theList.count - 1) {
                let formattedNode = "\(theList[index].head) | \(theList[index].data) | \(String(describing: theList[index].pointer))"
                if forDisplaying == "" {
                    forDisplaying = "\(formattedNode)"
                } else {
                    forDisplaying = forDisplaying + ", \(formattedNode)"
                }
            }
            return forDisplaying
        }
        
    }
    
}
