//
//  1662.CheckIfTwoStringArraysAreEquivalentTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 1/8/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class CheckIfTwoStringArraysAreEquivalentTests: XCTestCase {
    func testExample() throws {
        XCTAssertTrue(CheckIfTwoStringArraysAreEquivalent().arrayStringsAreEqual(["ab", "c"], ["a", "bc"]))
        XCTAssertFalse(CheckIfTwoStringArraysAreEquivalent().arrayStringsAreEqual(["a", "cb"], ["ab", "c"]))
        XCTAssertTrue(CheckIfTwoStringArraysAreEquivalent().arrayStringsAreEqual(["abc", "d", "defg"], ["abcddefg"]))
    }
}
