//
//  1679.MaxNumberOfKSumPairsTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 1/18/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class MaxNumberOfKSumPairsTests: XCTestCase {
    func testExample() throws {
        XCTAssertTrue(MaxNumberOfKSumPairs().maxOperations([1,2,3,4], 5) == 2)
        XCTAssertTrue(MaxNumberOfKSumPairs().maxOperations([3,1,3,4,3], 6) == 1)
        XCTAssertTrue(MaxNumberOfKSumPairs().maxOperations([3,5,1,5], 2) == 0)
        XCTAssertTrue(MaxNumberOfKSumPairs().maxOperations([2,2,2,3,1,1,4,1], 4) == 2)
    }
}
