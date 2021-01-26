//
//  1658.MinimumOperationsToReduceXToZeroTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 1/14/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class MinimumOperationsToReduceXToZeroTests: XCTestCase {
    func testExample() throws {
        XCTAssertTrue(MinimumOperationsToReduceXToZero().minOperations([1,1,4,2,3], 5) == 2)
        XCTAssertTrue(MinimumOperationsToReduceXToZero().minOperations([5,6,7,8,9], 4) == -1)
        XCTAssertTrue(MinimumOperationsToReduceXToZero().minOperations([3,2,20,1,1,3], 10) == 5)
    }
}
