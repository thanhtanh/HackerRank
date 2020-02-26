//
//  OrganizingContainers.swift
//  HackerRankPractice
//
//  Created by Tanh Pham on 2/26/20.
//  Copyright © 2020 NVG. All rights reserved.
//

import Foundation

class SherlockAndValidString: Solution {
    func isValid(s: String) -> String {
        let characters = s.map { String($0) }
        var dict: [String: Int] = [:]
        
        for char in characters {
            if var currentCount = dict[char] {
                currentCount += 1
                dict[char] = currentCount
            } else {
                dict[char] = 1
            }
        }
        
        let counts = dict.values.map { Int($0) }.sorted()
        
        let total = counts.reduce(0, +)
        
        if Double(total) / Double(counts.count) == Double(counts[0]) {
            return "YES"
        }
        
        if counts[0] == 1, counts.count > 1 {
            let remainedItems = counts.suffix(counts.count - 1).filter { $0 == counts[1] }
            if remainedItems.count == counts.count - 1 {
                return "YES"
            }
        } else if (total - 1) % counts.count == 0 {
            return "YES"
        }
        
        return "NO"
    }
    
    func execute() {
        print(isValid(s: "aabbc"))
    }
}
