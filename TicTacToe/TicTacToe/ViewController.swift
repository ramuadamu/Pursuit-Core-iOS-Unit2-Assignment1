//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var activePlayer = 1 // Nought
    
    var gameStatus = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    let possibleWinningCombinations = [[0, 1, 2], [0, 3, 6], [0, 4, 8], [1, 4, 7], [2, 4, 6], [2, 5, 8], [3, 4, 5], [6, 7, 8]]
    var gameActive = true
    
    
    @IBOutlet weak var label: UILabel!
    
    
    @IBOutlet weak var row: GameButton!
    
    @IBOutlet weak var restartButton: UIButton!
    
    @IBAction func restartButton(_ sender: Any) {
        
        gameStatus = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
        gameActive = true
         activePlayer = 1
       
        
        restartButton.isHidden = true
        label.isHidden = true
        
        for i in 1...9 {
            let restartButton = view.viewWithTag(i) as! UIButton
            restartButton.setImage(nil, for: .normal)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
@IBAction func action(_ sender: GameButton)
    {
       if (gameStatus[sender.tag - 1] == 0) && gameActive == true {
             gameStatus[sender.tag - 1] = activePlayer
        if (activePlayer == 1) {
            sender.setImage(UIImage(named:"Nought.png"), for: .normal)
            activePlayer = 2
        } else {
            sender.setImage(UIImage(named:"cross"), for: .normal)
            activePlayer = 1
            
            }
   }
    for combination in possibleWinningCombinations
    {
        if gameStatus[combination[0]] != 0 && gameStatus[combination[0]] == gameStatus[combination[1]] && gameStatus[combination[1]] == gameStatus[combination[2]]
    {
        gameActive = false
                
        if gameStatus[combination[0]] == 1
            {
            label.text = "NOUGHT WINS🏅"
            } else {
            label.text = "CROSS WINS🏅"
            }
            restartButton.isHidden = false
            label.isHidden = false
        }
        
    }
        gameActive = false // 1
        
        for i in gameStatus // 2
        {
            if i == 0
            {
                gameActive = true
                break
            }
        }
        if gameActive == false
        {
            label.text = "DRAW"
            label.isHidden = true
            restartButton.isHidden = true
}

}

}
