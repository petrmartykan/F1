//
//  Circuit.swift
//  F1.GP
//
//  Created by Petr Martykan on 10.10.17.
//  Copyright © 2017 Petr Martykan. All rights reserved.
//

import Foundation
class Circuit {
    let GP: String
    let nameCircuit: String
    let lenghtInMeters: Int
    
    init(GP:String, nameCircuit: String, lenghtInMeters: Int) {
        
        self.GP = GP
        self.nameCircuit = nameCircuit
        self.lenghtInMeters = lenghtInMeters
    }
    
    func startCircuit(pilots: [Pilot]) -> CircuitResult {
        let result = CircuitResult()
        result.array(pilots: pilots)
        return result
    }
    
    func circuitTip(pilots: [Pilot]) -> CircuitResult {
        let result = CircuitResult()
        result.sequenceInFinish(sequenceInFinish: pilots)
        return result
    }
    
    
    
}
