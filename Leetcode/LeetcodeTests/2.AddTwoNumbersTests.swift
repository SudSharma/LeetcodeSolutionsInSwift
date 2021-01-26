//
//  2.AddTwoNumbersTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 1/12/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class AddTwoNumbersTests: XCTestCase {
    func testExample() throws {
        XCTAssertTrue(AddTwoNumbers().addTwoNumbers(ListNode(2, ListNode(4, ListNode(3))), ListNode(5, ListNode(6, ListNode(4)))) == ListNode(7, ListNode(0, ListNode(8))))
        XCTAssertTrue(AddTwoNumbers().addTwoNumbers(ListNode(0), ListNode(0)) == ListNode(0))
        XCTAssertTrue(AddTwoNumbers().addTwoNumbers(ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9))))))), ListNode(9, ListNode(9, ListNode(9, ListNode(9))))) == ListNode(8, ListNode(9, ListNode(9, ListNode(9, ListNode(0, ListNode(0, ListNode(0, ListNode(1)))))))))
    }
}
