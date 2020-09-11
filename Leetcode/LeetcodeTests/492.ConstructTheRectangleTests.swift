//
//  ConstructTheRectangleTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 9/10/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class ConstructTheRectangleTests: XCTestCase {
    func testExample() throws {
        let obj = Rectangle()
        XCTAssertTrue(obj.constructRectangle(4) == [2,2])
        XCTAssertTrue(obj.constructRectangle(2) == [2,1])
        XCTAssertTrue(obj.constructRectangle(6) == [3,2])
        XCTAssertTrue(obj.constructRectangle(16) == [4,4])
    }
}
