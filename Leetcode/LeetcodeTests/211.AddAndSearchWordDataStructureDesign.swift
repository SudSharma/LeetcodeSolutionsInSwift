//
//  AddAndSearchWordDataStructureDesign.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 8/5/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class AddAndSearchWordDataStructureDesign: XCTestCase {
    func testExample() throws {
        let obj = WordDictionary()
        obj.addWord("bad")
        obj.addWord("dad")
        obj.addWord("mad")
        XCTAssertFalse(obj.search("pad")) // false
        XCTAssertTrue(obj.search("bad")) // true
        XCTAssertTrue(obj.search(".ad")) // true
        XCTAssertTrue(obj.search("b..")) // true
    }
}
