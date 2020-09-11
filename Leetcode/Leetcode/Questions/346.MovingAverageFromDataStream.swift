//
//  346.MovingAverageFromDataStream.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 9/8/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

/*
 Given a stream of integers and a window size, calculate the moving average of all integers in the sliding window.

 Example:

 MovingAverage m = new MovingAverage(3);
 m.next(1) = 1
 m.next(10) = (1 + 10) / 2
 m.next(3) = (1 + 10 + 3) / 3
 m.next(5) = (10 + 3 + 5) / 3
 */

class MovingAverage {
    let slidingWindowSize: Int
    var values: [Int]
    
    /** Initialize your data structure here. */
    init(_ size: Int) {
        slidingWindowSize = size
        values = [Int]()
    }
    
    func next(_ val: Int) -> Double {
        if values.count == slidingWindowSize {
            values.remove(at: 0)
        }
        values.append(val)
        
        return Double(values.reduce(0, +))/Double(values.count)
    }
}
