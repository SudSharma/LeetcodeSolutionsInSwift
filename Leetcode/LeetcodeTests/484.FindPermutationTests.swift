//
//  FindPermutationTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 8/15/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class FindPermutationTests: XCTestCase {
    func testExample() throws {
        let obj = FindPermutation()
        XCTAssertTrue(obj.findPermutation("I") == [1,2])
        XCTAssertTrue(obj.findPermutation("DI") == [2,1,3])
        XCTAssertTrue(obj.findPermutation("DIDIDIII") == [2,1,4,3,6,5,7,8])
    }
}
