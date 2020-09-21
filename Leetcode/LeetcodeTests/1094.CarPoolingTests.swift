//
//  CarPoolingTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 9/21/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class CarPoolingTests: XCTestCase {
    func testExample() throws {
        let obj = CarPooling()
        XCTAssertFalse(obj.carPooling([[2,1,5],[3,3,7]], 4))
        XCTAssertTrue(obj.carPooling([[2,1,5],[3,3,7]], 5))
        XCTAssertTrue(obj.carPooling([[2,1,5],[3,5,7]], 3))
        XCTAssertTrue(obj.carPooling([[3,2,7],[3,7,9],[8,3,9]], 11))
        XCTAssertTrue(obj.carPooling([[2,1,5]], 4))
        XCTAssertTrue(obj.carPooling([[3,2,8],[4,4,6],[10,8,9]], 11))
    }
}
