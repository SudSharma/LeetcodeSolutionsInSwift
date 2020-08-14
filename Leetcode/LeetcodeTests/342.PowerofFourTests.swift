//
//  PowerofFourTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 8/4/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class PowerofFourTests: XCTestCase {
    
    func test() throws {
        let obj = PowerofFour()
        XCTAssertTrue(obj.isPowerOfFour(16))
        XCTAssertFalse(obj.isPowerOfFour(5))
    }
    
    func testUsingLog() throws {
        let obj = PowerofFour()
        XCTAssertTrue(obj.isPowerOfFourUsingLog(16))
        XCTAssertFalse(obj.isPowerOfFourUsingLog(5))
    }
}
