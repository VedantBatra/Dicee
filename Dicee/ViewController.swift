//
//  ViewController.swift
//  Dicee
//
//  Created by Vedant Batra on 20/05/19.
//  Copyright © 2019 Vedant Batra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    
    var randomImage1 = 0;
    var randomImage2 = 0;
    
    let diceImageSet = ["dice1","dice2","dice3","dice4","dice5","dice6",]
    
    
    
    

    override func viewDidLoad() {
        changeImage()
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        changeImage()
    }
    
   
    @IBAction func rollButtonPress(_ sender: UIButton) {
        changeImage()
    }
    
    func changeImage(){
        
        randomImage1 = Int.random(in: 0 ... 5)
        randomImage2 = Int.random(in: 0 ... 5)
        
        diceImage1.image = UIImage (named: diceImageSet[randomImage1])
        diceImage2.image = UIImage (named: diceImageSet[randomImage2])
        
    }

}

