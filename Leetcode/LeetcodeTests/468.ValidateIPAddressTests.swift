//
//  ValidateIPAddressTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 6/16/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class ValidateIPAddressTests: XCTestCase {
    func testValidIPv4() throws {
        XCTAssertTrue(ValidateIPAddress().validIPAddress("172.16.254.1") == "IPv4")
    }
    
    func testValidIPv4_1() throws {
        XCTAssertTrue(ValidateIPAddress().validIPAddress("192.0.0.1") == "IPv4")
    }
    
    func testInvalidValidIPv4() throws {
        XCTAssertTrue(ValidateIPAddress().validIPAddress("172.00.254.1") == "Neither")
    }
    
    func testInvalidValidIPv4_2() throws {
        XCTAssertTrue(ValidateIPAddress().validIPAddress("15.16.-0.1") == "Neither")
    }
    
    func testValidIPv6() throws {
        XCTAssertTrue(ValidateIPAddress().validIPAddress("2001:0db8:85a3:0:0:8A2E:0370:7334") == "IPv6")
    }
    
    func testInvalidIPv6() throws {
        XCTAssertTrue(ValidateIPAddress().validIPAddress("2001:0db8:85a3:::8A2E:0370:7334") == "Neither")
    }
    
    func testNeither1() throws {
        XCTAssertTrue(ValidateIPAddress().validIPAddress("256.256.256.256") == "Neither")
    }
    
    func testNeither2() throws {
        XCTAssertTrue(ValidateIPAddress().validIPAddress("256.ABC.256.256") == "Neither")
    }
}
