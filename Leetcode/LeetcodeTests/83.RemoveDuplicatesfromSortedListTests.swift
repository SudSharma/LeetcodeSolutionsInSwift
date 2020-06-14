//
//  RemoveDuplicatesfromSortedListTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 6/13/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class RemoveDuplicatesfromSortedListTests: XCTestCase {
    func test1() throws {
        let rootNode = ListNode(1, ListNode(1, ListNode(2)))
        let modifiedRootNode = RemoveDuplicatesfromSortedList().deleteDuplicates(rootNode)
    }
    
    func test2() throws {
        let rootNode = ListNode(1, ListNode(1, ListNode(2, ListNode(3, ListNode(3)))))
        let modifiedRootNode = RemoveDuplicatesfromSortedList().deleteDuplicates(rootNode)
    }
    
    func test3() throws {
        let rootNode: ListNode? = ListNode(1, ListNode(1, ListNode(1)))
        let modifiedRootNode = RemoveDuplicatesfromSortedList().deleteDuplicates(rootNode)
    }
}
