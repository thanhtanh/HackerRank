//
//  MakeAnagram.swift
//  LungTung
//
//  Created by Tanh Pham on 2/26/20.
//  Copyright © 2020 NVG. All rights reserved.
//

import Foundation

class MakeAnagram: Solution {
    func makeAnagram(a: String, b: String) -> Int {
        var result = 0
        let aGroup = a.map { String($0) }
        let bGroup = b.map { String($0) }
        
        var aDict: [String: Int] = [:]
        var bDict: [String: Int] = [:]
        
        for item in aGroup {
            if let existItem = aDict[item] {
                aDict[item] = existItem + 1
            } else {
                aDict[item] = 1
            }
        }
        
        for item in bGroup {
            if let existItem = bDict[item] {
                bDict[item] = existItem + 1
            } else {
                bDict[item] = 1
            }
        }
        
        for pair in aDict {
            let valueA = pair.value
            let valueB = bDict[pair.key] ?? 0
            result += abs(valueA - valueB)
            bDict[pair.key] = nil
        }
        
        let remainedB = bDict.values.map { $0 }.reduce (0, +)
        return result + remainedB
    }
    
    func execute() {
        print(makeAnagram(a: "cde", b: "abc"))
    }
}
