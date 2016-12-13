//
//  Deck.swift
//  swift-blackjack-lab
//
//  Created by Lloyd W. Sykes on 12/13/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Deck {
    
    private var remainingCards = [Card]()
    private var cardsDealt = [Card]()
    var description: String { return descriptionFor(cardArray: remainingCards)}
    
    init() {
//        Write an initializer that generates the 52 unique cards required for modeling a standard 52-card deck. It should hold them in the array of cards that can be dealt.
        
    }
    
    func drawCard() {
        if let drawnCard = remainingCards.popLast() {
            cardsDealt.append(drawnCard)
        }
    }
    
    func shuffle() {
        
//        Write a shuffle() method that gathers up the dealt cards and randomizes all 52 cards. These randomized cards should be returned to your array of undealt cards.
//        Hint: The arc4random_uniform() C function is accessible in Swift.
        
        repeat {
            if let card = cardsDealt.popLast() {
                
                remainingCards.append(card)
            }
            
        } while cardsDealt.count > 0
    }
}
