//
//  BullsAndCowsTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 9/10/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class BullsAndCowsTests: XCTestCase {
    func testExample() throws {
        let obj = BullsAndCows()
        XCTAssertTrue(obj.getHint("1807", "7810") == "1A3B")
        XCTAssertTrue(obj.getHint("1123", "0111") == "1A1B")
        XCTAssertTrue(obj.getHint("1234", "0111") == "0A1B")
        XCTAssertTrue(obj.getHint("1122", "2211") == "0A4B")
    }
}
