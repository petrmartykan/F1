//
//  CircuitResult.swift
//  F1.GP
//
//  Created by Petr Martykan on 10.10.17.
//  Copyright © 2017 Petr Martykan. All rights reserved.
//

import Foundation
class CircuitResult {
    
    var randomDrivers = [Pilot]()
    
    func array(pilots: [Pilot]) {
        
        print("Starting pilots...")
        for i in 0..<pilots.count {
            print("\(pilots[i].ID)")
        }
        
        randomDrivers = pilots
        randomDrivers.random()
        
        print("Sequence in finish...")
        for i in 0..<randomDrivers.count {
            print("\(randomDrivers[i].ID)")
        }
        print("First monoposts in finish...")
        for i in 0...2 {
            print("\(i + 1) \(randomDrivers[i].monopostID)")
        }
        print("First places...")
        for i in 0...2 {
            print("\(i + 1) \(randomDrivers[i].ID)")
        }
        
    }
    func sequenceInFinish(sequenceInFinish: [Pilot]) {
        
        randomDrivers = sequenceInFinish
        randomDrivers.random()
        
        print("First places...")
        for i in 0...2 {
            print("\(i + 1) \(randomDrivers[i].name)")
        }
        
        
        
    }
    
    
    func getWinner() -> Pilot {
        return randomDrivers[0]
    }
    
    func getSecondPlace() -> Pilot {
        return randomDrivers[1]
    }
    
    func getThirdPlace() -> Pilot {
        return randomDrivers[2]
    }
    func pilotTip(pilots: Pilot...) -> [Pilot] {
        print("Tips...")
        for pilot in pilots {
            print("\(pilot.name)")
        }
        return pilots
    }
    
    
}

extension Array {
    mutating func random () {
        for i in (0..<self.count).reversed() {
            let ix1 = i
            let ix2 = Int(arc4random_uniform(UInt32(i+1)))
            (self[ix1], self[ix2]) = (self[ix2], self[ix1])
        }
    }
}
