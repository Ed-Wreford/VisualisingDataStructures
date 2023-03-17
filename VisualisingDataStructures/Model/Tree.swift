//
//  Tree.swift
//  VisualisingDataStructures
//
//  Created by Ed Wreford on 17/03/2023.
//

import Foundation

class TreeNode {
    
    var value: Int
    var children: [TreeNode] = []
    
    init(_ value: Int) {
        self.value = value
    }
}

class Tree {
    
    var root: TreeNode?
    
    func add() {
        
    }
    
    func displayTree() -> String {
        
        var forDisplaying = ""
        
        guard let root = root else {
            forDisplaying = "Tree is empty"
            return forDisplaying
        }
        
        var queue: [TreeNode] = [root]
        var levels: [[Int]] = []
        
        while !queue.isEmpty {
            
            var level: [Int] = []
            let levelCount = queue.count
            
            for _ in 0..<levelCount {
                
                let node = queue.removeFirst()
                level.append(node.value)
                queue += node.children
            }
            levels.append(level)
        }
        
        for (i, level) in levels.enumerated() {
            
            let indentCount = levels.count - i - 1
            let indent = String(repeating: "    ", count: indentCount)
            let row = level.map { "\($0)" }.joined(separator: "   ")
            
            forDisplaying = indent + row
        }
        return forDisplaying
    }
    
}
