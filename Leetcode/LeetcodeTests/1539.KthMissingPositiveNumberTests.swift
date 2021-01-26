//
//  1539.KthMissingPositiveNumberTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 1/6/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class KthMissingPositiveNumberTests: XCTestCase {
    func testExample() throws {
        XCTAssertTrue(KthMissingPositiveNumber().findKthPositive([2,3,4,7,11], 5) == 9)
        XCTAssertTrue(KthMissingPositiveNumber().findKthPositive([1,2,3,4], 2) == 6)
        XCTAssertTrue(KthMissingPositiveNumber().findKthPositive([1,13,18], 17) == 20)
    }
}
