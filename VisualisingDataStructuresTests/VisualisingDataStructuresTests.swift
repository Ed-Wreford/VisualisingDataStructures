//
//  VisualisingDataStructuresTests.swift
//  VisualisingDataStructuresTests
//
//  Created by Ed Wreford on 14/03/2023.
//

import XCTest
@testable import VisualisingDataStructures

class VisualisingDataStructuresTests: XCTestCase {
    
    func testThatCorrectItemIsPushedStack() throws {
        let stack = Stack()
        let testCases = [(itemToPush: 123, expected: 123), (itemToPush: 987, expected: 987)]
        
        
        for testCase in testCases {
            let actual = Int(stack.push(itemToBePushed: testCase.itemToPush))
            
            XCTAssertEqual(actual, testCase.expected)
        }
    }
        
    func testThatCorrectItemIsPoppedStack() throws {
        let stack = Stack()
        let testCases = [(testArray: [123, 456], expected: 456), (testArray: [123, 456, 789], expected: 789)]
        
            
        for testCase in testCases {
            stack.items.append(contentsOf: testCase.testArray)
            let actual = Int(stack.pop(anArray: testCase.testArray) ?? 0)
                
            XCTAssertEqual(actual, testCase.expected)
            stack.items = []
        }
    }
        
    func testThatCorrectItemIsPeekedStack() throws {
            
        let stack = Stack()
        let testCases = [(testArray: [123, 456], expected: 456), (testArray: [123, 456, 789], expected: 789)]
        
            
        for testCase in testCases {
            stack.items.append(contentsOf: testCase.testArray)
            let actual = Int(stack.peek(anArray: testCase.testArray) ?? 0)
                
            XCTAssertEqual(actual, testCase.expected)
            stack.items = []
        }
    }
        
    func testThatCorrectItemIsPushedQueue() throws {
        let queue = Queue()
        let testCases = [(itemToPush: 123, expected: 123), (itemToPush: 987, expected: 987)]
        
        
        for testCase in testCases {
            let actual = Int(queue.push(itemToBePushed: testCase.itemToPush))
            
            XCTAssertEqual(actual, testCase.expected)
        }
    }
        
    func testThatCorrectItemIsPoppedQueue() throws {
        let queue = Queue()
        let testCases = [(testArray: [123, 456], expected: 123), (testArray: [987, 654], expected: 987)]
        
        
        for testCase in testCases {
            queue.items.append(contentsOf: testCase.testArray)
            let actual = Int(queue.pop(anArray: testCase.testArray) ?? 0)
            
            XCTAssertEqual(actual, testCase.expected)
            queue.items = []
        }

    }
    
    func testThatCorrectOutputIsDisplayed() throws{
        let queue = Queue()
        let testCases = [(testArray: [123, 456], expected: "123, 456"), (testArray: [987, 654], expected: "987, 654")]
        
        
        for testCase in testCases {
            queue.items.append(contentsOf: testCase.testArray)
            let actual = queue.display(anArray: testCase.testArray)
            
            XCTAssertEqual(actual, testCase.expected)
            queue.items = []
        }
    }
    
    func testThatCorrectItemIsAddedToLinkedList() throws {
        var linkedList = LinkedList()
        let testCases = [(itemToBeAdded: 123, expected: 123), (itemToBeAdded: 987, expected: 987)]
        
        for testCase in testCases {
            linkedList.theList = [Node(head: 0, pointer: nil, data: testCase.itemToBeAdded)]
            let actual = linkedList.add(itemForAdding: testCase.itemToBeAdded)
            
            XCTAssertEqual(actual, testCase.expected)
            linkedList.theList = []
        }
    }
    
    func testThatCorrectItemIsRemovedFromLinkedList() throws {
        
    }
    
    func testThatCorrectItemIsDisplayedFromLinkedList() throws {
        
    }
}
