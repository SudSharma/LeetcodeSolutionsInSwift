//
//  GasStationTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 9/23/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class GasStationTests: XCTestCase {
    func testExample() throws {
        let obj = GasStation()
        XCTAssertTrue(obj.canCompleteCircuit([1,2,3,4,5], [3,4,5,1,2]) == 3)
        XCTAssertTrue(obj.canCompleteCircuit([2,3,4], [3,4,3]) == -1)
    }
}
