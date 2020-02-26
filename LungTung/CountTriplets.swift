//
//  CountTriplets.swift
//  LungTung
//
//  Created by Tanh Pham on 2/26/20.
//  Copyright © 2020 NVG. All rights reserved.
//

import Foundation

func countTriplets(arr: [Int], r: Int) -> Int {
    var dict2: [Int: Int] = [:]
    var dict3: [Int: Int] = [:]
    
    var result = 0
    
    for num in arr {
        if let item = dict3[num] {
            result += item
        }
        
        if dict2[num] != nil {
            if let exist = dict3[num * r] {
                dict3[num * r] = exist + dict2[num]!
            } else {
                dict3[num * r] = dict2[num]
            }
        }
        
        if let exist = dict2[num * r] {
            dict2[num * r] = exist + 1
        } else {
            dict2[num * r] = 1
        }
        
    }
    
    return result
}

let array3 = "1 3 9 9 27 81".components(separatedBy: " ").compactMap { Int($0) }
let xx3 = countTriplets(arr: array3, r: 3)
