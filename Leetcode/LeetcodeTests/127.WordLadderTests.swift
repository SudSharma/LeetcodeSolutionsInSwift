//
//  127.WordLadderTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 1/9/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class WordLadderTests: XCTestCase {
    func test1() throws {
        XCTAssertTrue(WordLadder().ladderLength("hit", "cog", ["hot","dot","dog","lot","log","cog"]) == 5)
        XCTAssertTrue(WordLadder().ladderLength("hit", "cog", ["hot","dot","dog","lot","log"]) == 0)
    }
}
