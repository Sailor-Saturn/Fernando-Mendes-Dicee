//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var esbetaculoTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        
//        let dices = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
//        let randomDice1 = dices.randomElement()!
        let dices = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
        let diceNum1 = Int.random(in: 0...5)
        let diceNum2 = Int.random(in: 0...5)
        diceImageView1.image = dices[diceNum1]
        diceImageView2.image = dices[diceNum2]
    
        if(diceNum1 == diceNum2){
            
            imageView.isHidden = false
            esbetaculoTitle.isHidden = false
            
            esbetaculoTitle.text = "😩 WOW QUE SORTE SAIU DOIS \(diceNum1+1) 😮"
            imageView.image = UIImage(named:"Esbetaculo")
            
        }else {
            imageView.isHidden = true
            esbetaculoTitle.isHidden = true
        }
    }

}

