//
//  LargestNumberTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 9/25/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class LargestNumberTests: XCTestCase {
    func testExample() throws {
        let obj = LargestNumber()
        XCTAssertTrue(obj.largestNumber([10,2]) == "210")
        XCTAssertTrue(obj.largestNumber([3,30,34,5,9]) == "9534330")
    }
}
