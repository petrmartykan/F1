//
//  Tip.swift
//  F1.GP
//
//  Created by Petr Martykan on 16.10.17.
//  Copyright © 2017 Petr Martykan. All rights reserved.
//

import Foundation
class Tip {
    
    
    func pilotTip(pilots: Pilot...) -> [Pilot] {
        print("Tips...")
        for pilot in pilots {
            print("\(pilot.name)")
        }
        return pilots
    }
    
    func equal(tips: [Pilot], sequenceInFinish: [Pilot]) {
        
        
    }
}
