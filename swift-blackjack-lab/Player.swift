//
//  Player.swift
//  swift-blackjack-lab
//
//  Created by Lloyd W. Sykes on 12/13/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Player {
    
    let name: String
    var cards = [Card]()
    var handscore: UInt { return calculateHand() }
    var blackjack: Bool { return checkBlackjack() }
    var busted: Bool { return checkBusted() }
    var stayed: Bool = false
    var mayHit: Bool { return canIHit() }
    var tokens: UInt = 100
    var description: String { return "\(name) has a score of \(handscore)" }
    
    init(name: String) {
        self.name = name
    }
    
    private func calculateHand() -> UInt {
        var score: UInt = 0
        for card in self.cards {
            score += card.cardValue
        }
        return score
    }
    
    private func checkBlackjack() -> Bool {
        if self.cards.count == 2 && self.handscore == 21 {
            return true
        }
        return false
    }
    
    private func checkBusted() -> Bool {
        if self.handscore > 21 {
            return true
        }
        return false
    }
    
    private func canIHit() -> Bool {
        if !self.busted || !self.blackjack || !self.stayed {
            return true
        }
        return false
    }
    
    func canPlace(bet: UInt) -> Bool {
        if self.tokens >= bet {
            return true
        }
        return false
    }
    
    func didWin(bet: UInt) {
        self.tokens += bet
    }
    
    func didLose(bet: UInt) {
        self.tokens -= bet
    }
    
}
