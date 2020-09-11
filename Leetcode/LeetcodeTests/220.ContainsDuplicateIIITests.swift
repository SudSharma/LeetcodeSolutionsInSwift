//
//  ContainsDuplicateIIITests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 9/2/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class ContainsDuplicateIIITests: XCTestCase {
    func testExample() throws {
        let obj = ContainsDuplicateIII()
        XCTAssertTrue(obj.containsNearbyAlmostDuplicate([1,2,3,1], 3, 0))
        XCTAssertTrue(obj.containsNearbyAlmostDuplicate([1,0,1,1], 1, 2))
        XCTAssertFalse(obj.containsNearbyAlmostDuplicate([1,5,9,1,5,9], 2, 3))
    }
}
