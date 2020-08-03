//
//  ValidPalindromeTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 8/3/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class ValidPalindromeTests: XCTestCase {
    
    func test() throws {
        let obj = ValidPalindrome()
        XCTAssertTrue(obj.isPalindrome("A man, a plan, a canal: Panama"))
        XCTAssertFalse(obj.isPalindrome("race a car"))
    }
}
