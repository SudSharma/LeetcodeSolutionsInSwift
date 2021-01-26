//
//  1640.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 1/1/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class CheckArrayFormationThroughConcatenationTests: XCTestCase {
    
    func testExample() throws {
        let obj1 = CheckArrayFormationThroughConcatenation()
        XCTAssertTrue(obj1.canFormArray([85], [[85]]))
        XCTAssertTrue(obj1.canFormArray([15,88], [[88],[15]]))
        XCTAssertFalse(obj1.canFormArray([49,18,16], [[16,18,49]]))
        XCTAssertTrue(obj1.canFormArray([91,4,64,78], [[78],[4,64],[91]]))
        XCTAssertFalse(obj1.canFormArray([1,3,5,7], [[2,4,6,8]]))
    }
}
