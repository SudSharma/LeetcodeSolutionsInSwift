//
//  RemoveCoveredIntervalsTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 10/4/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class RemoveCoveredIntervalsTests: XCTestCase {
    func testExample() throws {
        let obj = RemoveCoveredIntervals()
        XCTAssertTrue(obj.removeCoveredIntervals([[1,4],[3,6],[2,8]]) == 2)
        XCTAssertTrue(obj.removeCoveredIntervals([[1,4],[2,3]]) == 1)
        XCTAssertTrue(obj.removeCoveredIntervals([[0,10],[5,12]]) == 2)
        XCTAssertTrue(obj.removeCoveredIntervals([[3,10],[4,10],[5,11]]) == 2)
        XCTAssertTrue(obj.removeCoveredIntervals([[1,2],[1,4],[3,4]]) == 1)
    }
}
