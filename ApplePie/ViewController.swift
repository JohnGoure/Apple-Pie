//
//  ViewController.swift
//  ApplePie
//
//  Created by john goure on 5/4/18.
//  Copyright © 2018 john goure. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var listOfWords = ["eggs", "chicken", "bacon", "sausage", "bread", "basketball", "baseball", "teading", "golf", "dog", "cat", "sponge", "soap"]
    
    let incorrectMovesAllowed = 7
    
    var totalWins = 0
    var totalLosses = 0

    @IBOutlet weak var treeImageView: UIImageView!
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var letterButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
    }
    
    var currentGame: Game!
    
    func newRound() {
        let newWord = listOfWords.removeFirst()
        currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed)
        updateUI()
    }
    
    func updateUI() {
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        sender.isEnabled = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

