//
//  LongestPalindromeTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 8/14/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class LongestPalindromeTests: XCTestCase {
    
    func testExample() throws {
        let obj = LongestPalindrome()
        XCTAssertTrue(obj.longestPalindrome("abccccdd") == 7)
        XCTAssertTrue(obj.longestPalindrome("a") == 1)
        XCTAssertTrue(obj.longestPalindrome("") == 0)
        XCTAssertTrue(obj.longestPalindrome("aA") == 1)
        XCTAssertTrue(obj.longestPalindrome("ccc") == 3)
        XCTAssertTrue(obj.longestPalindrome("bananas") == 5)
        XCTAssertTrue(obj.longestPalindrome("AB") == 1)
    }
}
