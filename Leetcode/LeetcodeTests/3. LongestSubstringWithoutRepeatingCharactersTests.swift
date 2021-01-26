//
//  3.LongestSubstringWithoutRepeatingCharactersTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 1/7/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class LongestSubstringWithoutRepeatingCharactersTests: XCTestCase {
    func testExample() throws {
        XCTAssertTrue(LongestSubstringWithoutRepeatingCharacters().lengthOfLongestSubstring("abcabcbb") == 3)
        XCTAssertTrue(LongestSubstringWithoutRepeatingCharacters().lengthOfLongestSubstring("bbbbb") == 1)
        XCTAssertTrue(LongestSubstringWithoutRepeatingCharacters().lengthOfLongestSubstring("pwwkew") == 3)
        XCTAssertTrue(LongestSubstringWithoutRepeatingCharacters().lengthOfLongestSubstring("") == 0)
        XCTAssertTrue(LongestSubstringWithoutRepeatingCharacters().lengthOfLongestSubstring("dvdf") == 3)
    }
}
