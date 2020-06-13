//
//  LargestDivisibleSubsetTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 6/13/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class LargestDivisibleSubsetTests: XCTestCase {
    func test1() throws {
        XCTAssertTrue(Solution().largestDivisibleSubset([1,2,4,8]) == [1,2,4,8])
    }
    
    func test2() throws {
        let largestDivisibleSubset = Solution().largestDivisibleSubset([1,2,3])
        XCTAssertTrue(largestDivisibleSubset == [1,2] || largestDivisibleSubset == [1,3])
    }
}
