//
//  LinkedList.swift
//  VisualisingDataStructures
//
//  Created by Ed Wreford on 15/03/2023.
//

import Foundation

struct Node: Equatable {
    
    var head: Int
    var pointer: Int?
    var data: Int
    
}

struct LinkedList {
    
    var theList: [Node] = []
    
    mutating func add(itemForAdding: Int) -> Int {
        if theList.isEmpty {
            theList.append(Node(head: 0, pointer: nil, data: itemForAdding))
        } else {
            let previousHead: Int = theList[theList.count - 1].head
            let newHead: Int = previousHead + 1
            let previousData: Int = theList[theList.count - 1].data
            // changes pointer of previous item
            theList[theList.count - 1] = (Node(head: previousHead, pointer: newHead, data: previousData))
            // adds new item to linked list
            theList.insert(Node(head: newHead, pointer: nil, data: itemForAdding), at: theList.count)
        }
        return theList[theList.count - 1].data
    }
    
    mutating func remove(itemForRemoving: Int) -> [Node] {
        if theList.count != 0 {
            if itemForRemoving != 0 {
                let previousHead: Int = theList[itemForRemoving - 1].head
                let previousData: Int = theList[itemForRemoving - 1].data
                let newPointer = theList[itemForRemoving].pointer
                // changes previous item
                theList[itemForRemoving - 1] = (Node(head: previousHead,pointer: newPointer, data: previousData))
                // deletes choosen node
                theList.remove(at: itemForRemoving)
            } else {
                theList.remove(at: itemForRemoving)
            }
        }
        return theList
    }
    
    mutating func displayList() -> String {
        var forDisplaying = ""
        if theList.isEmpty {
            return forDisplaying
        } else {
            for index in 0...(theList.count - 1) {
                let formattedNode = "Head: \(theList[index].head) | \(theList[index].data) | Pointer: \(String(describing: theList[index].pointer))"
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
