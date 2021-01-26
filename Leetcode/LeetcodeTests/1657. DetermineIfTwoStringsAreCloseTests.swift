//
//  1657.DetermineIfTwoStringsAreCloseTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 1/22/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class DetermineIfTwoStringsAreCloseTests: XCTestCase {
    func testExample() throws {
        XCTAssertTrue(DetermineIfTwoStringsAreClose().closeStrings("abc", "bca"))
        XCTAssertFalse(DetermineIfTwoStringsAreClose().closeStrings("a", "aa"))
        XCTAssertTrue(DetermineIfTwoStringsAreClose().closeStrings("cabbba", "abbccc"))
        XCTAssertFalse(DetermineIfTwoStringsAreClose().closeStrings("cabbba", "aabbss"))
        XCTAssertFalse(DetermineIfTwoStringsAreClose().closeStrings("uau", "ssx"))
    }
}
