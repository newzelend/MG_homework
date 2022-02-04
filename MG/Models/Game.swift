//
//  Game.swift
//  MG
//
//  Created by Grisha Pospelov on 03.02.2022.
//

import Foundation

final class Game {
    private init() {
        self.gameCareTaker = GameCareTaker()
        self.resultsGame = self.gameCareTaker.load()
    }
    
    static let shared = Game()
    var gameSession: GameSession?
    private let gameCareTaker: GameCareTaker
    var resultsGame: [ResultGame]
    
    
    func endGame(_ resultGame: ResultGame) {
        resultsGame.append(resultGame)
        gameCareTaker.save(self.resultsGame)
    }
}
