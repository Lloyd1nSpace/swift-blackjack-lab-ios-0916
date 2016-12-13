//
//  Dealer.swift
//  swift-blackjack-lab
//
//  Created by Lloyd W. Sykes on 12/13/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Dealer {

    let deck = Deck()
    let house = House(name: "House")
    let player = Player(name: "Player")
    var bet: UInt = 0
    
    func place(bet: UInt) -> Bool {
        if self.house.tokens >= bet && self.player.tokens >= bet {
            self.bet = bet
            return true
        }
        return false
    }
    
    func deal() {
//        Write a method called deal() that deals a new round, giving two new cards each to the player and to the house.
    }
    
    func turn() {
//        Write a method called turn() which takes a House argument (since in this console version both the house and the player will be used with this method). If the House object is allowed to take a card, it should be asked if it wishes to hit or stay. If the House object wishes to hit, the dealer should then give it a card. If the House object wishes to stay, then the decision to stay should be recorded.
    }
    
    func winner() -> String {
//        Write a method called winner() which returns a string containing the result of the round. It should:
//        return "player" if the player wins,
//        return "house" if the house wins, and
//        return "no" if there is not yet a winner.
//        Keep in mind that:
//        a bust is an immediate victory for the other player,
//        the house wins ties, and
//        the player can win by holding five cards that are not a bust.
        return ""
    }
    
    func award() {
//        Write a method called award() that uses the result of the winner() method to award the bet to the winner of the round. It should add the value of the bet to the winning player and subtract the value of the bet from the losing player. The award() method should also return a string message expressing the result of the round in a phrase or sentence.
//        
//        Top-tip: Swift's switch statement works with objects—in contrast to Objective-C's which only works with integers and enums.
    }
    
}
