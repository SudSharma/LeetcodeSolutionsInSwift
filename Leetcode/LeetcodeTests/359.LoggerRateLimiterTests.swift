//
//  LoggerRateLimiterTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 8/1/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class LoggerRateLimiterTests: XCTestCase {

    func test() throws {
        let logger = Logger()
        XCTAssertTrue(logger.shouldPrintMessage(1, "foo")) // true
        XCTAssertTrue(logger.shouldPrintMessage(2, "bar")) // true
        XCTAssertFalse(logger.shouldPrintMessage(3, "foo")) // false
        XCTAssertFalse(logger.shouldPrintMessage(8, "bar")) // false
        XCTAssertFalse(logger.shouldPrintMessage(10, "foo")) // false
        XCTAssertTrue(logger.shouldPrintMessage(11, "foo")) // true
    }

}
