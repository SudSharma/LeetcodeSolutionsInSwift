//
//  161.OneEditDistanceTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 1/22/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class OneEditDistanceTests: XCTestCase {
    
    func testExample() throws {
        XCTAssertFalse(OneEditDistance().isOneEditDistance("c", "c"))
        XCTAssertTrue(OneEditDistance().isOneEditDistance("ab", "acb"))
        XCTAssertTrue(OneEditDistance().isOneEditDistance("acb", "ab"))
        XCTAssertFalse(OneEditDistance().isOneEditDistance("", ""))
        XCTAssertTrue(OneEditDistance().isOneEditDistance("a", ""))
        XCTAssertTrue(OneEditDistance().isOneEditDistance("", "A"))
    }
}
