//
//  ViewController.swift
//  NumberDice
//
//  Created by NTS on 19/12/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var logoCartoon: UIImageView!
    @IBOutlet weak var firstImage: UIImageView!
    @IBOutlet weak var secondImage: UIImageView!
    
    var numberArray = [
        UIImage(imageLiteralResourceName: "1"),
        UIImage(imageLiteralResourceName: "2"),
        UIImage(imageLiteralResourceName: "3"),
        UIImage(imageLiteralResourceName: "4"),
        UIImage(imageLiteralResourceName: "5"),
        UIImage(imageLiteralResourceName: "6")
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        logoCartoon.layer.borderWidth = 1
        logoCartoon.layer.masksToBounds = false
        logoCartoon.layer.borderColor = UIColor.black.cgColor
        logoCartoon.layer.cornerRadius = logoCartoon.frame.height/2
        logoCartoon.clipsToBounds = true
       
    }


    @IBAction func playButtonPressed(_ sender: UIButton) {
        firstImage.image = numberArray[Int.random(in: 0...5)]
        secondImage.image = numberArray[Int.random(in: 0...5)]
    }
}

