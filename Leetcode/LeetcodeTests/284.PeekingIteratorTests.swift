//
//  PeekingIteratorTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 6/13/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class PeekingIteratorTests: XCTestCase {
    func test1() throws {
        let obj = PeekingIterator([1,2,3].makeIterator())
        XCTAssertTrue(obj.next() == 1)
        XCTAssertTrue(obj.peek() == 2)
        XCTAssertTrue(obj.next() == 2)
        XCTAssertTrue(obj.next() == 3)
        XCTAssertFalse(obj.hasNext())
    }
    
    func test2() throws {
        let obj = PeekingIterator([1,2,3,4].makeIterator())
        XCTAssertTrue(obj.hasNext())
        XCTAssertTrue(obj.peek() == 1)
        XCTAssertTrue(obj.peek() == 1)
        XCTAssertTrue(obj.next() == 1)
        XCTAssertTrue(obj.next() == 2)
        XCTAssertTrue(obj.peek() == 3)
        XCTAssertTrue(obj.peek() == 3)
        XCTAssertTrue(obj.next() == 3)
        XCTAssertTrue(obj.hasNext())
        XCTAssertTrue(obj.peek() == 4)
        XCTAssertTrue(obj.hasNext())
        XCTAssertTrue(obj.next() == 4)
        XCTAssertFalse(obj.hasNext())
    }
}
