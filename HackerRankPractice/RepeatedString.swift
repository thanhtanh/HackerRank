//
//  RepeatedString.swift
//  LungTung
//
//  Created by Tanh Pham on 2/26/20.
//  Copyright © 2020 NVG. All rights reserved.
//

import Foundation

class RepeatedString: Solution {
    func repeatedString(s: String, n: Int) -> Int {
        let numberOfA = s.map { $0 }.filter { $0 == "a" }.count
        
        let repeatTime = n / s.count
        let remained = n - repeatTime * s.count
        let remainedA = s.prefix(remained).map { $0 }.filter { $0 == "a" }.count
        
        return numberOfA * repeatTime + remainedA
    }
    
    func execute() {
        print(repeatedString(s: "aba", n: 10))
    }
}
