//
//  JumpingOnClouds.swift
//  LungTung
//
//  Created by Tanh Pham on 2/26/20.
//  Copyright © 2020 NVG. All rights reserved.
//

import Foundation

func jumpingOnClouds(c: [Int]) -> Int {
    var numberOfJumps = 0
    var clouds = c
    clouds.removeFirst()
    
    while clouds.count > 0 {
        guard let firstStep = clouds.first else { break }
        
        if firstStep == 1 {
            numberOfJumps += 1
            clouds.removeFirst()
            if !clouds.isEmpty {
                clouds.removeFirst()
            }
        } else {
            clouds.removeFirst()
            numberOfJumps += 1
            if !clouds.isEmpty && clouds[0] == 0 {
                clouds.removeFirst()
            }
            
        }
    }
    return numberOfJumps
}

let dataSet = "0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 1 0 1 0 0 0 1 0 0 1 0 0 0 1 0 1 0 0 0 0 0 0 0 0 1 0 0 1 0 1 0 0"
    .components(separatedBy: " ")
    .compactMap { Int($0) }
let minimum = jumpingOnClouds(c: dataSet)
