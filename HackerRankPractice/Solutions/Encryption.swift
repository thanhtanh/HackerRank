//
//  Encryption.swift
//  HackerRankPractice
//
//  Created by Tanh Pham on 2/26/20.
//  Copyright © 2020 NVG. All rights reserved.
//

import Foundation

// https://www.hackerrank.com/challenges/encryption/problem

class Encryption: Solution {
    func encryption(s: String) -> String {
        let string = s.trimmingCharacters(in: .whitespaces)
        
        let x = sqrt(Double(string.count))
        var rows = Int(floor(x))
        let columns = Int(ceil(x))
        
        if rows * columns < string.count {
            rows += 1
        }
        
        let array = split(string: string, by: columns)
            .map { $0.map { String($0) } }
        var results: [String] = []
        
        for i in 0..<columns {
            results.append("")
            for j in 0..<rows where array[j].count > i {
                results[i] += array[j][i]
            }
        }
        
        return results.joined(separator: " ")
    }
    
    func split(string: String, by length: Int) -> [String] {
        var startIndex = string.startIndex
        var results = [Substring]()

        while startIndex < string.endIndex {
            let endIndex = string.index(startIndex, offsetBy: length, limitedBy: string.endIndex) ?? string.endIndex
            results.append(string[startIndex..<endIndex])
            startIndex = endIndex
        }

        return results.map { String($0) }
    }
    
    func execute() {
        print(encryption(s: "chillout"))
    }
}
