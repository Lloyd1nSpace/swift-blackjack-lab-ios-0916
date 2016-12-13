//
//  House.swift
//  swift-blackjack-lab
//
//  Created by Lloyd W. Sykes on 12/13/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class House: Player {
    
    var mustHit: Bool { return mayIHit() }
    
    override init(name: String) {
        super.init(name: name)
        self.tokens = 1000
    }
    
    private func mayIHit() -> Bool {
        if self.handscore <= 17 {
            return true
        }
        return false
    }
}
