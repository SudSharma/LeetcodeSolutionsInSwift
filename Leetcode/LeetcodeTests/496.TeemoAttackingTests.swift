//
//  TeemoAttackingTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 9/26/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class TeemoAttackingTests: XCTestCase {
    func testExample() throws {
        let obj = TeemoAttacking()
        XCTAssertTrue(obj.findPoisonedDuration([1,4], 2) == 4)
        XCTAssertTrue(obj.findPoisonedDuration([1,2], 2) == 3)
    }
}
