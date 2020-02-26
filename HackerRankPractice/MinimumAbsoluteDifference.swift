//
//  MinimumAbsoluteDifference.swift
//  LungTung
//
//  Created by Tanh Pham on 2/26/20.
//  Copyright © 2020 NVG. All rights reserved.
//

import Foundation

func minimumAbsoluteDifference(arr: [Int]) -> Int {
    let sortedArr = arr.sorted()
    var min = abs(sortedArr[1] - sortedArr[0])
    
    for i in 2..<sortedArr.count {
        let diff = abs(sortedArr[i] - sortedArr[i-1])
        if diff < min {
            min = diff
        }
    }
    return min
}

let arr = "-59 -36 -13 1 -53 -92 -2 -96 -54 75".components(separatedBy: " ").compactMap { Int($0) }
//print(minimumAbsoluteDifference(arr: arr))
