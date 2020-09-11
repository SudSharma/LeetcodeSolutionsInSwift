//
//  RemoveVowelsFromAStringTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 9/10/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class RemoveVowelsFromAStringTests: XCTestCase {
    func testExample() throws {
        let obj = RemoveVowelsFromAString()
        XCTAssertTrue(obj.removeVowels("leetcodeisacommunityforcoders") == "ltcdscmmntyfrcdrs")
        XCTAssertTrue(obj.removeVowels("aeiou") == "")
    }
}
