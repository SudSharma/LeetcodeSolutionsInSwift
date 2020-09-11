//
//  MovingAverageFromDataStreamTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 9/8/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class MovingAverageFromDataStreamTests: XCTestCase {
    func testExample() throws {
        let obj = MovingAverage(3)
        XCTAssertTrue(obj.next(1) == 1)
        XCTAssertTrue(obj.next(10).isEqual(to: 5.5))
        XCTAssertTrue(obj.next(3).isEqual(to: 4.666666666666667))
        XCTAssertTrue(obj.next(5).isEqual(to: 6))
    }
    
    func testExample1() throws {
        let obj = MovingAverage(1)
        XCTAssertTrue(obj.next(4) == 4)
        XCTAssertTrue(obj.next(0).isEqual(to: 0))
    }
}
