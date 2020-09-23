//
//  InsertIntoASortedCircularLinkedListTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 9/22/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class InsertIntoASortedCircularLinkedListTests: XCTestCase {
    func testExample() {
        let obj = InsertIntoASortedCircularLinkedList()
        let headNode = Node(3)
        let node2 = Node(3)
        headNode.next = node2
        let node3 = Node(3)
        node2.next = node3
        node3.next = headNode
        obj.insert(headNode, 0)
    }
}
