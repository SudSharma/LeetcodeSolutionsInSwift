//
//  CompareVersionNumbersTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 9/9/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class CompareVersionNumbersTests: XCTestCase {
    func testExample() throws {
        let obj = CompareVersionNumbers()
        XCTAssertTrue(obj.compareVersion("0.1", "1.1") == -1)
        XCTAssertTrue(obj.compareVersion("1.0.1", "1") == 1)
        XCTAssertTrue(obj.compareVersion("7.5.2.4", "7.5.3") == -1)
        XCTAssertTrue(obj.compareVersion("1.01", "1.001") == 0)
        XCTAssertTrue(obj.compareVersion("1.0", "1.0.0") == 0)
    }
}
