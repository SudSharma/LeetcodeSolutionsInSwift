//
//  399.EvaluateDivision.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 9/27/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

/*
 You are given equations in the format A / B = k, where A and B are variables represented as strings, and k is a real number (floating-point number). Given some queries, return the answers. If the answer does not exist, return -1.0.

 The input is always valid. You may assume that evaluating the queries will result in no division by zero and there is no contradiction.

  

 Example 1:

 Input: equations = [["a","b"],["b","c"]], values = [2.0,3.0], queries = [["a","c"],["b","a"],["a","e"],["a","a"],["x","x"]]
 Output: [6.00000,0.50000,-1.00000,1.00000,-1.00000]
 Explanation:
 Given: a / b = 2.0, b / c = 3.0
 queries are: a / c = ?, b / a = ?, a / e = ?, a / a = ?, x / x = ?
 return: [6.0, 0.5, -1.0, 1.0, -1.0 ]
 Example 2:

 Input: equations = [["a","b"],["b","c"],["bc","cd"]], values = [1.5,2.5,5.0], queries = [["a","c"],["c","b"],["bc","cd"],["cd","bc"]]
 Output: [3.75000,0.40000,5.00000,0.20000]
 Example 3:

 Input: equations = [["a","b"]], values = [0.5], queries = [["a","b"],["b","a"],["a","c"],["x","y"]]
 Output: [0.50000,2.00000,-1.00000,-1.00000]
  

 Constraints:

 1 <= equations.length <= 20
 equations[i].length == 2
 1 <= equations[i][0], equations[i][1] <= 5
 values.length == equations.length
 0.0 < values[i] <= 20.0
 1 <= queries.length <= 20
 queries[i].length == 2
 1 <= queries[i][0], queries[i][1] <= 5
 equations[i][0], equations[i][1], queries[i][0], queries[i][1] consist of lower case English letters and digits.
 */

class EvaluateDivision {
    func calcEquation(_ equations: [[String]], _ values: [Double], _ queries: [[String]]) -> [Double] {
        var graph: [String : [(String, Double)]] = [:]

        for i in 0..<equations.count {
            let firstVar = equations[i][0]
            let secondVar = equations[i][1]

            if graph[firstVar] == nil {
                graph[firstVar] = []
            }

            if graph[secondVar] == nil {
                graph[secondVar] = []
            }

            graph[firstVar]!.append((secondVar, values[i]))
            graph[secondVar]!.append((firstVar, 1 / values[i]))
        }

        var result: [Double] = []

        for querie in queries {
            result.append(search(graph, querie[0], querie[1], [:], 1))
        }

        return result
    }

    func search(_ graph: [String : [(String, Double)]], _ currentElement: String, _ element: String, _ searched: [String:Bool], _ sum: Double) -> Double {
        if currentElement == element, graph[currentElement] != nil {
            return sum
        }

        var updatedSearched = searched
        updatedSearched[currentElement] = true
        guard let children = graph[currentElement] else {
            return -1
        }

        for child in children {
            if updatedSearched[child.0] == nil {
                let result = search(graph, child.0, element, updatedSearched, sum * child.1)

                if result != -1 {
                    return result
                }
            }
        }

        return -1
    }
}
