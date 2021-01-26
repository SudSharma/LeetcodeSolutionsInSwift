//
//  23.MergeKSortedListsTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 1/24/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class MergeKSortedListsTests: XCTestCase {
    func testExample() throws {
        XCTAssertTrue(MergeKSortedLists().mergeKLists([ListNode(1, ListNode(4, ListNode(5))),
                                                       ListNode(1, ListNode(3, ListNode(4))),
                                                       ListNode(2, ListNode(6))]) == ListNode(1, ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(4, ListNode(5, ListNode(6)))))))))
        XCTAssertTrue(MergeKSortedLists().mergeKLists([]) == nil)
    }
}
