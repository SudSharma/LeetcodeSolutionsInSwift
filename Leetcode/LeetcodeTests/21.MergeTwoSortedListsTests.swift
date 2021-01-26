//
//  21.MergeTwoSortedListsTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 1/4/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class MergeTwoSortedListsTests: XCTestCase {
    func testExample() throws {
        let list1Node3 = ListNode(4)
        let list1Node2 = ListNode(2, list1Node3)
        let list1Node1 = ListNode(1, list1Node2)
        
        let list2Node3 = ListNode(4)
        let list2Node2 = ListNode(3, list2Node3)
        let list2Node1 = ListNode(1, list2Node2)
        
        let list3Node6 = ListNode(4)
        let list3Node5 = ListNode(4, list3Node6)
        let list3Node4 = ListNode(3, list3Node5)
        let list3Node3 = ListNode(2, list3Node4)
        let list3Node2 = ListNode(1, list3Node3)
        let list3Node1 = ListNode(1, list3Node2)
        
        XCTAssertTrue(MergeTwoSortedLists().mergeTwoLists(list1Node1, list2Node1) == list3Node1)
    }
    
    func testExample2() throws {
        XCTAssertTrue(MergeTwoSortedLists().mergeTwoLists(nil, nil) == nil)
    }
    
    func testExample3() throws {
        let list2Node1 = ListNode(0)
        let list3Node1 = ListNode(0)
        
        XCTAssertTrue(MergeTwoSortedLists().mergeTwoLists(nil, list2Node1) == list3Node1)
    }
    
    func testExample4() throws {
        let list1Node1 = ListNode(2)
        let list2Node1 = ListNode(1)
        let list3Node2 = ListNode(2)
        let list3Node1 = ListNode(1, list3Node2)
        
        XCTAssertTrue(MergeTwoSortedLists().mergeTwoLists(list1Node1, list2Node1) == list3Node1)
    }
}
