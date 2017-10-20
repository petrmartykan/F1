//
//  Tip.swift
//  F1.GP
//
//  Created by Petr Martykan on 16.10.17.
//  Copyright © 2017 Petr Martykan. All rights reserved.
//

import Foundation
class Tip {
    
    
    var earnedMoney = 0
    
    var firstPositionPilot:String = ""
    var secondPositionPilot:String = ""
    var thirdPositionPilot:String = ""
    
    
    func setPilots(firstPilot:String, secondPilot:String, thirdPilot:String) {
        firstPositionPilot = firstPilot
        secondPositionPilot = secondPilot
        thirdPositionPilot = thirdPilot
    }
}
