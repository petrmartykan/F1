//
//  Pilot.swift
//  F1.GP
//
//  Created by Petr Martykan on 10.10.17.
//  Copyright © 2017 Petr Martykan. All rights reserved.
//

import Foundation
class Pilot {
    let ID: String
    let name: String
    let monopostID: String
    
    init(ID: String, name: String, monopostID: String) {
        
        self.ID = ID
        self.name = name
        self.monopostID = monopostID
    }
}
