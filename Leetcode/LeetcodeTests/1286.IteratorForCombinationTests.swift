//
//  IteratorForCombinationTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 8/13/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class IteratorForCombinationTests: XCTestCase {
    func testExample() throws {
        let iterator = CombinationIterator("abc", 2)
        XCTAssertTrue(iterator.next() == "ab") // returns "ab"
        XCTAssertTrue(iterator.hasNext()) // returns true
        XCTAssertTrue(iterator.next() == "ac") // returns "ac"
        XCTAssertTrue(iterator.hasNext()) // returns true
        XCTAssertTrue(iterator.next() == "bc") // returns "bc"
        XCTAssertFalse(iterator.hasNext()) // returns false
    }
}
