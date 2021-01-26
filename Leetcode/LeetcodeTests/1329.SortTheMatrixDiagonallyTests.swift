//
//  1329.SortTheMatrixDiagonallyTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 1/23/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class SortTheMatrixDiagonallyTests: XCTestCase {
    func testExample() throws {
        XCTAssertTrue(SortTheMatrixDiagonally().diagonalSort([[3,3,1,1],[2,2,1,2],[1,1,1,2]]) == [[1,1,1,1],[1,2,2,2],[1,2,3,3]])
    }
}
