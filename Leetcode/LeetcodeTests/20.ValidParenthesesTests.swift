//
//  20.ValidParenthesesTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 1/20/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class ValidParenthesesTests: XCTestCase {
    func testExample() throws {
        XCTAssertFalse(ValidParentheses().isValid("["))
        XCTAssertTrue(ValidParentheses().isValid("()"))
        XCTAssertTrue(ValidParentheses().isValid("()[]{}"))
        XCTAssertFalse(ValidParentheses().isValid("(]"))
        XCTAssertFalse(ValidParentheses().isValid("([)]"))
        XCTAssertTrue(ValidParentheses().isValid("{[]}"))
    }
}
