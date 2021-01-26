//
//  5.LongestPalindromicSubstringTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 1/19/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class LongestPalindromicSubstringTests: XCTestCase {
    func testExample() throws {
        XCTAssertTrue(LongestPalindromicSubstring().longestPalindrome("babad") == "bab")
        XCTAssertTrue(LongestPalindromicSubstring().longestPalindrome("cbbd") == "bb")
        XCTAssertTrue(LongestPalindromicSubstring().longestPalindrome("a") == "a")
        XCTAssertTrue(LongestPalindromicSubstring().longestPalindrome("ac") == "a")
    }
}
