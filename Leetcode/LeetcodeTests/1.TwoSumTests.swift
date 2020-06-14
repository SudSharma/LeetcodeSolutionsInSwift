//
//  TwoSumTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 6/13/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class TwoSumTests: XCTestCase {
    func test1() throws {
        XCTAssertTrue(TwoSumSolution().twoSum([2, 7, 11, 15], 9) == [0, 1])
    }
    
    func test2() throws {
        XCTAssertTrue(TwoSumSolution().twoSum([2, 4, 4, 15], 8) == [1, 2])
    }
    
    func test3() throws {
        XCTAssertTrue(TwoSumSolution().twoSum([230,863,916,585,981,404,316,785,88,12,70,435,384,778,887,755,740,337,86,92,325,422,815,650,920,125,277,336,221,847,168,23,677,61,400,136,874,363,394,199,863,997,794,587,124,321,212,957,764,173,314,422,927,783,930,282,306,506,44,926,691,568,68,730,933,737,531,180,414,751,28,546,60,371,493,370,527,387,43,541,13,457,328,227,652,365,430,803,59,858,538,427,583,368,375,173,809,896,370,789], 542) == [28, 45])
    }
    
    func test4() throws {
        XCTAssertTrue(TwoSumSolution().twoSumBruteForce([2, 7, 11, 15], 9) == [0, 1])
    }
}