//
//  1379.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 1/2/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class FindACorrespondingNodeOfABinaryTreeInACloneOfThatTreeTests: XCTestCase {
    func test1() throws {
        let node1 = TreeNode(6)
        let node2 = TreeNode(19)
        let node3 = TreeNode(3, left: node1, right: node2)
        let node4 = TreeNode(4)
        let node5 = TreeNode(7, left: node4, right: node3)
        let node6 = node5
        XCTAssert(FindACorrespondingNodeOfABinaryTreeInACloneOfThatTree().getTargetCopy(node5, node6, node3) == node3)
    }
    
    func test2() throws {
        let node1 = TreeNode(7)
        let node2 = node1
        XCTAssert(FindACorrespondingNodeOfABinaryTreeInACloneOfThatTree().getTargetCopy(node1, node2, node1) == node1)
    }
    
    func test3() throws {
        let node1 = TreeNode(1)
        let node2 = TreeNode(2, right: node1)
        let node3 = TreeNode(3, right: node2)
        let node4 = TreeNode(4, right: node3)
        let node5 = TreeNode(5, right: node4)
        let node6 = TreeNode(6, right: node5)
        let node7 = TreeNode(7, right: node6)
        let node8 = TreeNode(8, right: node7)
        let node = node8
        XCTAssert(FindACorrespondingNodeOfABinaryTreeInACloneOfThatTree().getTargetCopy(node8, node, node4) == node4)
    }
}
