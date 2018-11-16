//
//  TicTacToeBrain.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation


class TicTacToeBrain {
    
    var activePlayer = 1 // Nought
    
    var gameStatus = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    let possibleWinningCombinations = [[0, 1, 2], [0, 3, 6], [0, 4, 8], [1, 4, 7], [2, 4, 6], [2, 5, 8], [3, 4, 5], [6, 7, 8]]
    
    var gameActive = true
    @IBAction func restartButton(_ sender: Any) {
        
        gameStatus = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
        gameActive = true
        activePlayer = 1
}
        

}


