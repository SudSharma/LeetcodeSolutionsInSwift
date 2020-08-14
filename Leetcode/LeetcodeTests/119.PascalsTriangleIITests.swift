//
//  PascalsTriangleIITests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 8/12/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class PascalsTriangleIITests: XCTestCase {
    func testExample() throws {
        let obj = PascalsTriangleII()
        XCTAssertTrue(obj.getRow(2) == [1,2,1])
        XCTAssertTrue(obj.getRow(3) == [1,3,3,1])
        XCTAssertTrue(obj.getRow(4) == [1,4,6,4,1])
        XCTAssertTrue(obj.getRow(5) == [1,5,10,10,5,1])
    }
}
