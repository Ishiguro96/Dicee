//
//  ViewController.swift
//  Dicee
//
//  Created by Dawid on 03/12/2018.
//  Copyright © 2018 Ishiguro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var diceRoll1: Int = 0;
    var diceRoll2: Int = 0;
    
    let diceImages = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceRoll1 = Int(arc4random_uniform(6))
        diceRoll2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: diceImages[diceRoll1])
        diceImageView2.image = UIImage(named: diceImages[diceRoll2])
    }
    
}

