//
//  CoutingValleys.swift
//  LungTung
//
//  Created by Tanh Pham on 2/26/20.
//  Copyright © 2020 NVG. All rights reserved.
//

import Foundation

class CountingValleys: Solution {
    func countingValleys(n: Int, s: String) -> Int {
        var currentAltitude = 0
        var numberOfValley = 0
        
        for char in s {
            let isInValley = currentAltitude < 0
            
            if char == "U" {
                currentAltitude += 1
            } else {
                currentAltitude -= 1
            }
            
            if currentAltitude == 0 && isInValley {
                numberOfValley += 1
            }
        }
        return numberOfValley
    }

    func execute() {
        print(countingValleys(n: 8, s: "DDUUUUDD"))
    }
}


