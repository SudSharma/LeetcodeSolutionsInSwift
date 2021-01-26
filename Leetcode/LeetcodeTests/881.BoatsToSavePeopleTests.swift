//
//  881.BoatsToSavePeopleTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 1/13/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class BoatsToSavePeopleTests: XCTestCase {
    func testExample() throws {
        XCTAssertTrue(BoatsToSavePeople().numRescueBoats([1,2], 3) == 1)
        XCTAssertTrue(BoatsToSavePeople().numRescueBoats([3,2,2,1], 3) == 3)
        XCTAssertTrue(BoatsToSavePeople().numRescueBoats([3,5,3,4], 5) == 4)
    }
}
