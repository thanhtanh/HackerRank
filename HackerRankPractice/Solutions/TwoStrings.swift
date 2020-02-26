//
//  TwoStrings.swift
//  LungTung
//
//  Created by Tanh Pham on 2/26/20.
//  Copyright © 2020 NVG. All rights reserved.
//

import Foundation

class TwoStrings: Solution {
    func twoStrings(s1: String, s2: String) -> String {
        let group1 = s1.map { String($0) }
        let group2 = s2.map { String($0) }
        
        var dict1: [String: Int] = [:]
        var dict2: [String: Int] = [:]
        
        for item in group1 {
            if let existItem = dict1[item] {
                dict1[item] = existItem + 1
            } else {
                dict1[item] = 1
            }
        }
        
        for item in group2 {
            if let existItem = dict2[item] {
                dict2[item] = existItem + 1
            } else {
                dict2[item] = 1
            }
        }
        
        for pair in dict1 {
            if dict2[pair.key] != nil {
                return "YES"
            }
        }
        return "NO"
    }
    
    func execute() {
        print(twoStrings(s1: "hi", s2: "world"))
    }
}
