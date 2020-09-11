//
//  RepeatedSubstringPatternTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 9/3/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class RepeatedSubstringPatternTests: XCTestCase {
    
    func testExample() throws {
        let obj = RepeatedSubstringPattern()
        XCTAssertTrue(obj.repeatedSubstringPattern("abab"))
        XCTAssertFalse(obj.repeatedSubstringPattern("aba"))
        XCTAssertTrue(obj.repeatedSubstringPattern("abcabcabcabc"))
    }
}
