//
//  SurroundedRegionsTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 6/17/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class SurroundedRegionsTests: XCTestCase {
    func test1() throws {
        var regions: [[Character]] = [["X", "X", "X", "X"],
                                      ["X", "0", "0", "X"],
                                      ["X", "X", "0", "X"],
                                      ["X", "0", "X", "X"]]
        let surroundedRegions: [[Character]] = [["X", "X", "X", "X"],
                                                ["X", "X", "X", "X"],
                                                ["X", "X", "X", "X"],
                                                ["X", "0", "X", "X"]]
        SurroundedRegions().solve(&regions)
        XCTAssertTrue(regions == surroundedRegions)
    }
    
    func test2() throws {
        var regions: [[Character]] = [["O","X","X","O","X"],
                                      ["X","O","O","X","O"],
                                      ["X","O","X","O","X"],
                                      ["O","X","O","O","O"],
                                      ["X","X","O","X","O"]]
        let surroundedRegions: [[Character]] = [["O","X","X","O","X"],
                                                ["X","X","X","X","O"],
                                                ["X","X","X","O","X"],
                                                ["O","X","O","O","O"],
                                                ["X","X","O","X","O"]]
        SurroundedRegions().solve(&regions)
        XCTAssertTrue(regions == surroundedRegions)
    }
}
