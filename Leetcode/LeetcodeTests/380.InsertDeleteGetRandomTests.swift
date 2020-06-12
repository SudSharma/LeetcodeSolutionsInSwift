//
//  InsertDeleteGetRandomTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 6/12/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class InsertDeleteGetRandomTests: XCTestCase {
    func test1() throws {
        let randomSet = RandomizedSet()
        
        // Inserts 1 to the set. Returns true as 1 was inserted successfully.
        XCTAssertTrue(randomSet.insert(1))
        
        // Returns false as 2 does not exist in the set.
        XCTAssertFalse(randomSet.remove(2))
        
        // Inserts 2 to the set, returns true. Set now contains [1,2].
        XCTAssertTrue(randomSet.insert(2))
        
        // getRandom should return either 1 or 2 randomly.
        
        XCTAssertTrue([1,2].contains(randomSet.getRandom()))
        
        // Removes 1 from the set, returns true. Set now contains [2].
        XCTAssertTrue(randomSet.remove(1))
        
        // 2 was already in the set, so return false.
        XCTAssertFalse(randomSet.insert(2))
        
        // Since 2 is the only number in the set, getRandom always return 2.
        XCTAssertTrue(randomSet.getRandom() == 2)
    }
    
    func test2() throws {
        let randomSet = RandomizedSet()
        
        // Returns false as 0 does not exist in the set.
        XCTAssertFalse(randomSet.remove(0))
        
        // Returns false as 0 does not exist in the set.
        XCTAssertFalse(randomSet.remove(0))
        
        // Inserts 0 to the set. Returns true as 0 was inserted successfully.
        XCTAssertTrue(randomSet.insert(0))
        
        // getRandom should return 0 randomly.
        XCTAssertTrue(randomSet.getRandom() == 0)
        
        // Returns true as 0 exists in the set.
        XCTAssertTrue(randomSet.remove(0))
        
        // Inserts 0 to the set. Returns true as 0 was inserted successfully.
        XCTAssertTrue(randomSet.insert(0))
    }
}
