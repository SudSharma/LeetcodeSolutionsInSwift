//
//  82.RemoveDuplicatesfromSortedListIITests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 1/5/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class RemoveDuplicatesfromSortedListIITests: XCTestCase {
    func test1() throws {
        let rootNode = ListNode(1, ListNode(2, ListNode(3, ListNode(3, ListNode(4, ListNode(4, ListNode(5)))))))
        XCTAssertTrue(RemoveDuplicatesfromSortedListII().deleteDuplicates(rootNode) == ListNode(1, ListNode(2, ListNode(5))))
    }
    
    func test2() throws {
        let rootNode = ListNode(1, ListNode(1, ListNode(1, ListNode(2, ListNode(3)))))
        XCTAssertTrue(RemoveDuplicatesfromSortedListII().deleteDuplicates(rootNode) == ListNode(2, ListNode(3)))
    }
    
    func test3() throws {
        let rootNode: ListNode? = ListNode(1, ListNode(1, ListNode(1)))
        XCTAssertTrue(RemoveDuplicatesfromSortedListII().deleteDuplicates(rootNode) == nil)
    }
}
