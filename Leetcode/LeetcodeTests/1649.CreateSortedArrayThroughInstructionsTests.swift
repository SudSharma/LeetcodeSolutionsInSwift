//
//  1649.CreateSortedArrayThroughInstructionsTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 1/10/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class CreateSortedArrayThroughInstructionsTests: XCTestCase {
    func testExample() throws {
        XCTAssertTrue(CreateSortedArrayThroughInstructions().createSortedArray([1,5,6,2]) == 1)
        XCTAssertTrue(CreateSortedArrayThroughInstructions().createSortedArray([1,2,3,6,5,4]) == 3)
        XCTAssertTrue(CreateSortedArrayThroughInstructions().createSortedArray([1,3,3,3,2,4,2,1,2]) == 4)
    }
}
