//
//  SearchInABinarySearchTreeTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 6/15/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class SearchInABinarySearchTreeTests: XCTestCase {
    func test1() throws {
        let root = TreeNode(4, left: TreeNode(2, left: TreeNode(1), right: TreeNode(3)), right: TreeNode(7))
        XCTAssertTrue(BinarySearchTree().areEqual(BinarySearchTree().searchBST(root, 2),
                                                  TreeNode(2, left: TreeNode(1), right: TreeNode(3))))
    }
    
    func test2() throws {
        let root = TreeNode(4, left: TreeNode(2, left: TreeNode(1), right: TreeNode(3)), right: TreeNode(7))
        XCTAssertTrue(BinarySearchTree().searchBST(root, 6) == nil)
    }
}
