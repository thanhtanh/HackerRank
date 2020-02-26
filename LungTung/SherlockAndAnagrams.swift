//
//  SherlockAndAnagrams.swift
//  LungTung
//
//  Created by Tanh Pham on 2/26/20.
//  Copyright © 2020 NVG. All rights reserved.
//

import Foundation

func sherlockAndAnagrams(s: String) -> Int {
    var dict: [String: Int] = [:]
    
    for i in 0..<(s.count + 1) {
        for j in (i+1)..<(s.count + 1) {
            let sub = s[i..<j]
                .map { String($0) }
                .sorted()
                .joined()
            if let existItem = dict[sub] {
                dict[sub] = existItem + 1
            } else {
                dict[sub] = 1
            }
        }
    }
    
    let result = dict.values.reduce(0) { (result, next) -> Int in
        if next > 1 {
            let numberOfPair = next * (next - 1) / 2
            return result + numberOfPair
        }
        return result
    }
    
    return result
}

let xx2 = sherlockAndAnagrams(s: "cdcd")
