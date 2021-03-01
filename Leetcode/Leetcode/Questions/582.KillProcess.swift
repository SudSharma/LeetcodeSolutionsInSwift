//
//  582.KillProcess.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 2/15/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 Given n processes, each process has a unique PID (process id) and its PPID (parent process id).

 Each process only has one parent process, but may have one or more children processes. This is just like a tree structure. Only one process has PPID that is 0, which means this process has no parent process. All the PIDs will be distinct positive integers.

 We use two list of integers to represent a list of processes, where the first list contains PID for each process and the second list contains the corresponding PPID.

 Now given the two lists, and a PID representing a process you want to kill, return a list of PIDs of processes that will be killed in the end. You should assume that when a process is killed, all its children processes will be killed. No order is required for the final answer.

 Example 1:

 Input:
 pid =  [1, 3, 10, 5]
 ppid = [3, 0, 5, 3]
 kill = 5
 Output: [5,10]
 Explanation:
            3
          /   \
         1     5
              /
             10
 Kill 5 will also kill 10.
 Note:

 The given kill id is guaranteed to be one of the given PIDs.
 n >= 1.
 */

class Process {
    var childProcess: Process?
    let id: Int
    weak var parentProcess: Process?
    
    init(_ id: Int, _ childProcess: Process?, _ parentProcess: Process?) {
        self.id = id
        self.childProcess = childProcess
        self.parentProcess = parentProcess
    }
}

class KillProcess {
    func killProcess(_ pid: [Int], _ ppid: [Int], _ kill: Int) -> [Int] {
        var killedProcesses = [Int]()
        var processesToBeKilled = [kill]
        var parentProcessMap = [Int: [Int]]()
        var index = -1
        for ppidValue in ppid {
            index += 1
            if let _ = parentProcessMap[ppidValue] {
                parentProcessMap[ppidValue]?.append(pid[index])
            }
            else {
                parentProcessMap[ppidValue] = [pid[index]]
            }
        }
        
        while !processesToBeKilled.isEmpty {
            let first = processesToBeKilled.removeFirst()
            killedProcesses.append(first)
            
            if let exists = parentProcessMap[first] {
                processesToBeKilled.append(contentsOf: exists)
            }
        }
        
        return killedProcesses
    }
}
