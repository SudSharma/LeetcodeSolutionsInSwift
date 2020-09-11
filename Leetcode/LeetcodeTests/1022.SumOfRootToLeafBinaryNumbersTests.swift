//
//  SumOfRootToLeafBinaryNumbersTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 9/8/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class SumOfRootToLeafBinaryNumbersTests: XCTestCase {
    
    func testExample() throws {
        let obj = SumOfRootToLeafBinaryNumbers()
        let root = TreeNode(1, left: TreeNode(0, left: TreeNode(0), right: TreeNode(1)), right: TreeNode(1, left: TreeNode(0), right: TreeNode(1)))
        XCTAssertTrue(obj.sumRootToLeaf(root) == 22)
    }
}
