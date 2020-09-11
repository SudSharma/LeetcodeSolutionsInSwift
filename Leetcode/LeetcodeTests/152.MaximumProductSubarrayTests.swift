//
//  MaximumProductSubarrayTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 9/11/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class MaximumProductSubarrayTests: XCTestCase {
    func testExample() throws {
        let obj = MaximumProductSubarray()
        XCTAssertTrue(obj.maxProduct([2,3,-2,4]) == 6)
        XCTAssertTrue(obj.maxProduct([-2,0,-1]) == 0)
    }
}
