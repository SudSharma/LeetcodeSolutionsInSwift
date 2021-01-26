//
//  88.MergeSortedArrayTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 1/11/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class MergeSortedArrayTests: XCTestCase {
    func testExample() throws {
        var array1 = [1,2,3,0,0,0]
        MergeSortedArray().merge(&array1, 3, [2,5,6], 3)
        XCTAssertTrue(array1 == [1,2,2,3,5,6])
        
        var array2 = [1]
        MergeSortedArray().merge(&array2, 1, [], 0)
        XCTAssertTrue(array2 == [1])
    }
}
