//
//  TimeBasedKeyValueStoreTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 6/13/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class TimeBasedKeyValueStoreTests: XCTestCase {
    // Time limit exceeded
    func test1TLE() throws {
        let kv = TimeMap1()
        kv.set("foo", "bar", 1)
        XCTAssertTrue(kv.get("foo", 1) == "bar")
        XCTAssertTrue(kv.get("foo", 3) == "bar")
        kv.set("foo", "bar2", 4)
        XCTAssertTrue(kv.get("foo", 4) == "bar2")
        XCTAssertTrue(kv.get("foo", 5) == "bar2")
    }
    
    // Time limit exceeded
    func test2TLE() throws {
        let kv = TimeMap1()
        kv.set("love","high",10)
        kv.set("love","low",20)
        XCTAssertTrue(kv.get("love", 5) == "")
        XCTAssertTrue(kv.get("love",10) == "high")
        XCTAssertTrue(kv.get("love",15) == "high")
        XCTAssertTrue(kv.get("love",20) == "low")
        XCTAssertTrue(kv.get("love",25) == "low")
    }
    
    func test1() throws {
        let kv = TimeMap()
        kv.set("foo", "bar", 1)
        XCTAssertTrue(kv.get("foo", 1) == "bar")
        XCTAssertTrue(kv.get("foo", 3) == "bar")
        kv.set("foo", "bar2", 4)
        XCTAssertTrue(kv.get("foo", 4) == "bar2")
        XCTAssertTrue(kv.get("foo", 5) == "bar2")
    }
    
    func test2() throws {
        let kv = TimeMap()
        kv.set("love","high",10)
        kv.set("love","low",20)
        XCTAssertTrue(kv.get("love", 5) == "")
        XCTAssertTrue(kv.get("love",10) == "high")
        XCTAssertTrue(kv.get("love",15) == "high")
        XCTAssertTrue(kv.get("love",20) == "low")
        XCTAssertTrue(kv.get("love",25) == "low")
    }
}
