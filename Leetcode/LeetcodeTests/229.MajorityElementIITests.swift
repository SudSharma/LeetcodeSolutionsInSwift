//
//  MajorityElementIITests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 9/22/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class MajorityElementIITests: XCTestCase {
    func testExample() throws {
        let obj = MajorityElementII()
        XCTAssertTrue(obj.majorityElement([3,2,3]).sorted() == [3])
        XCTAssertTrue(obj.majorityElement([1,1,1,3,3,2,2,2]).sorted() == [1,2])
    }
}
