//
//  359.LoggerRateLimiter.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 8/1/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

/*
 Logger Rate Limiter
 Design a logger system that receive stream of messages along with its timestamps, each message should be printed if and only if it is not printed in the last 10 seconds.

 Given a message and a timestamp (in seconds granularity), return true if the message should be printed in the given timestamp, otherwise returns false.

 It is possible that several messages arrive roughly at the same time.

 Example:

 Logger logger = new Logger();

 // logging string "foo" at timestamp 1
 logger.shouldPrintMessage(1, "foo"); returns true;

 // logging string "bar" at timestamp 2
 logger.shouldPrintMessage(2,"bar"); returns true;

 // logging string "foo" at timestamp 3
 logger.shouldPrintMessage(3,"foo"); returns false;

 // logging string "bar" at timestamp 8
 logger.shouldPrintMessage(8,"bar"); returns false;

 // logging string "foo" at timestamp 10
 logger.shouldPrintMessage(10,"foo"); returns false;

 // logging string "foo" at timestamp 11
 logger.shouldPrintMessage(11,"foo"); returns true;
 */

class Logger {
    
    var lastTenLogger: [String: Int]
    
    /** Initialize your data structure here. */
    init() {
        lastTenLogger = [String: Int]()
    }
    
    /** Returns true if the message should be printed in the given timestamp, otherwise returns false.
        If this method returns false, the message will not be printed.
        The timestamp is in seconds granularity. */
    func shouldPrintMessage(_ timestamp: Int, _ message: String) -> Bool {
        if lastTenLogger[message] == nil {
            lastTenLogger[message] = timestamp
            return true
        }
        if lastTenLogger[message] != nil && timestamp - lastTenLogger[message]! >= 10 {
            lastTenLogger[message] = timestamp
            return true
        }
        
        return false
    }
}