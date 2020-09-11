//
//  WordPatternTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 9/7/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class WordPatternTests: XCTestCase {
    func testExample() throws {
        let obj = WordPattern()
        XCTAssertTrue(obj.wordPattern("abba", "dog cat cat dog"))
        XCTAssertFalse(obj.wordPattern("abba", "dog cat cat fish"))
        XCTAssertFalse(obj.wordPattern("aaaa", "dog cat cat dog"))
        XCTAssertFalse(obj.wordPattern("abba", "dog dog dog dog"))
    }
}
