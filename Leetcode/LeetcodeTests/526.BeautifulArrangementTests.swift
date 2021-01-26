//
//  526.BeautifulArrangementTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 1/3/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class BeautifulArrangementTests: XCTestCase {
    func testExample() throws {
        let obj1 = BeautifulArrangement()
        XCTAssertTrue(obj1.countArrangement(2) == 2)
        XCTAssertTrue(obj1.countArrangement(1) == 1)
    }
}
