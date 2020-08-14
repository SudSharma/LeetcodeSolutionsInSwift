//
//  ExcelSheetColumnNumberTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 8/10/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class ExcelSheetColumnNumberTests: XCTestCase {
    func testExample() throws {
        let obj = ExcelSheetColumnNumber()
        XCTAssertTrue(obj.titleToNumber("A") == 1)
        XCTAssertTrue(obj.titleToNumber("Z") == 26)
        XCTAssertTrue(obj.titleToNumber("AA") == 27)
        XCTAssertTrue(obj.titleToNumber("AB") == 28)
        XCTAssertTrue(obj.titleToNumber("ZY") == 701)
    }
}
