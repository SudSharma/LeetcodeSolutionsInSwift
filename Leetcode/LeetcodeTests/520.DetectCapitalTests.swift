//
//  DetectCapitalTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 8/2/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class DetectCapitalTests: XCTestCase {
    
    func test() throws {
        let obj = DetectCapital()
        XCTAssertTrue(obj.detectCapitalUse("USA"))
        XCTAssertTrue(obj.detectCapitalUse("Google"))
        XCTAssertTrue(obj.detectCapitalUse("leetcode"))
        XCTAssertFalse(obj.detectCapitalUse("FlaG"))
    }
}
