//
//  HIndexTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 6/19/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class HIndexTests: XCTestCase {
    func test1() throws {
        XCTAssertTrue(HIndex().hIndex([3,0,6,1,5]) == 3)
    }
    
    func test2() throws {
        XCTAssertTrue(HIndex().hIndex([100]) == 1)
    }
    
    func test3() throws {
        XCTAssertTrue(HIndex().hIndex([15,11]) == 2)
    }
    
    func test4() throws {
        XCTAssertTrue(HIndex().hIndex([0]) == 0)
    }
    
    func test5() throws {
        XCTAssertTrue(HIndex().hIndex([1, 0]) == 1)
    }
}
