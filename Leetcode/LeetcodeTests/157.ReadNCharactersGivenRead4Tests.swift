//
//  ReadNCharactersGivenRead4Tests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 9/1/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class ReadNCharactersGivenRead4Tests: XCTestCase {
    func testExample() throws {
        var obj = SolutionReader("abc")
        var buffer = [Character]()
        XCTAssertTrue(obj.read(&buffer, 4) == 3)
        XCTAssertTrue(buffer == ["a", "b", "c"])
        
        obj = SolutionReader("abcde")
        var buffer1 = [Character]()
        XCTAssertTrue(obj.read(&buffer1, 5) == 5)
        XCTAssertTrue(buffer1 == ["a", "b", "c", "d", "e"])
        
        obj = SolutionReader("abcdABCD1234")
        var buffer2 = [Character]()
        XCTAssertTrue(obj.read(&buffer2, 12) == 12)
    }
}
