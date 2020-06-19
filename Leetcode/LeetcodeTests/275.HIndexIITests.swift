//
//  275.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 6/18/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class HIndexIITests: XCTestCase {
    func test1() throws {
        XCTAssertTrue(HIndexII().hIndex([0,1,3,5,6]) == 3)
    }
    
    func test2() throws {
        XCTAssertTrue(HIndexII().hIndex([100]) == 1)
    }
    
    func test3() throws {
        XCTAssertTrue(HIndexII().hIndex([11,15]) == 2)
    }
    
    func test4() throws {
        XCTAssertTrue(HIndexII().hIndex([0]) == 0)
    }
    
    func test5() throws {
        XCTAssertTrue(HIndexII().hIndex([0, 1]) == 1)
    }
}
