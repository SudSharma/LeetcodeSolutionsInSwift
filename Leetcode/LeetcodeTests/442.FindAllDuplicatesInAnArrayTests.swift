//
//  FindAllDuplicatesInAnArrayTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 8/6/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class FindAllDuplicatesInAnArrayTests: XCTestCase {
    func testExample() throws {
        let obj = FindAllDuplicatesInAnArray()
        XCTAssertTrue(obj.findDuplicates([4,3,2,7,8,2,3,1]) == [2,3])
    }
}
