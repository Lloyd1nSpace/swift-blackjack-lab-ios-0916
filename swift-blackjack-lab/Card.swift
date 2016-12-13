//
//  Card.swift
//  swift-blackjack-lab
//
//  Created by Lloyd W. Sykes on 12/13/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Card {
    
    let suit: String
    let rank: String
    let cardLabel: String
    var cardValue: UInt = 0
    var description: String { return cardLabel }
    
    init(suit: String, rank: String) {
        self.suit = suit
        self.rank = rank
        self.cardLabel = suit + rank
        self.cardValue = determineCardValue(rank)
    }
    
    func validSuits() -> [String] {
        return ["♠️", "♦️", "❤️", "♣️"]
    }
    
    func validRanks() -> [String] {
        return ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    }
    
    func determineCardValue(_ rank: String) -> UInt {
        switch rank {
        case "A":
            return 1
        case "J", "Q", "K":
            return 10
        default:
            return UInt(rank)!
        }
    }
    
}

func descriptionFor(cardArray: [Card]) -> String {
//    Create a global function outside the end of the class called descriptionFor(cardArray:). This should take in an array of Card objects and return a single string of all the cardLabels in the array, sorted by suit and rank, with each suit on a new line.
    
    var cards = [String]()
    
    for card in cardArray {
        print("\(card.cardLabel)\n")
        cards.append(card.cardLabel)
    }
    
    return "\(cards)\n"
}
