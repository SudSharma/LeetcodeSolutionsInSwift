//
//  266.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 1/1/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class PalindromePermutationTests: XCTestCase {
    func testExample() throws {
        let obj1 = PalindromePermutation()
        XCTAssertFalse(obj1.canPermutePalindrome("code"))
        XCTAssertTrue(obj1.canPermutePalindrome("aab"))
        XCTAssertTrue(obj1.canPermutePalindrome("carerac"))
    }
}
