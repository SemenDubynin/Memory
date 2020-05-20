//
//  EmojiMemoryGame.swift
//  Memory
//
//  Created by Дубынин Семён on 20.05.2020.
//  Copyright © 2020 Дубынин Семён. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["🏈","⚽️","🏀"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        
        }
    }
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
 
    func  choose(card: MemoryGame<String>.Card) {
    model.choose(card: card)
    }
}
