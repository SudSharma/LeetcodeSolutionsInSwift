//
//  1437.CheckIfAll1sAreAtLeastLengthKPlacesAwayTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 1/25/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class CheckIfAll1sAreAtLeastLengthKPlacesAwayTests: XCTestCase {
    func testExample() throws {
        XCTAssertFalse(CheckIfAll1sAreAtLeastLengthKPlacesAway().kLengthApart([1,0,0,1,0,1], 2))
        XCTAssertTrue(CheckIfAll1sAreAtLeastLengthKPlacesAway().kLengthApart([1,1,1,1,1], 0))
        XCTAssertTrue(CheckIfAll1sAreAtLeastLengthKPlacesAway().kLengthApart([0,1,0,1], 1))
    }
}
