//
//  28.ImplementstrStrTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 1/13/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class ImplementstrStrTests: XCTestCase {
    func testExample() throws {
        XCTAssertTrue(ImplementstrStr().strStr("hello", "ll") == 2)
        XCTAssertTrue(ImplementstrStr().strStr("aaaaa", "bba") == -1)
        XCTAssertTrue(ImplementstrStr().strStr("", "") == 0)
        XCTAssertTrue(ImplementstrStr().strStr("hel", "ll") == -1)
        XCTAssertTrue(ImplementstrStr().strStr("a", "") == 0)
    }
}
