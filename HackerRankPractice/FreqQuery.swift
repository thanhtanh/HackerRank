//
//  FreqQuery.swift
//  LungTung
//
//  Created by Tanh Pham on 2/26/20.
//  Copyright © 2020 NVG. All rights reserved.
//

import Foundation

class FreqQuery: Solution {
    func freqQuery(queries: [[Int]]) -> [Int] {
        var array: [Int] = []
        var result: [Int] = []
        for query in queries {
            let command = query[0]
            let value = query[1]
            
            if command == 1 {
                array.append(value)
            } else if command == 2 {
                if let index = array.firstIndex(where: { $0 == value }) {
                    array.remove(at: index)
                }
            } else {
                if array.first(where: { $0 == value }) != nil {
                    result.append(1)
                } else {
                    result.append(0)
                }
            }
        }
        
        return result
    }
    
    func execute() {
        let query = """
    1 3
    2 3
    3 2
    1 4
    1 5
    1 5
    1 4
    3 2
    2 4
    3 2
    """.components(separatedBy: "\n").map { $0.components(separatedBy: " ").compactMap { Int($0) } }
        print(freqQuery(queries: query))
    }
}
