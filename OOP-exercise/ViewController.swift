//
//  ViewController.swift
//  OOP-exercise
//
//  Created by Zach Mcmillan-Clenaghan on 02/06/2016.
//  Copyright © 2016 ClenTech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var player1HpLbl: UILabel!
    @IBOutlet weak var player2HpLbl: UILabel!
    @IBOutlet weak var player1Img: UIImageView!
    @IBOutlet weak var player2Img: UIImageView!
    @IBOutlet weak var printLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // allows image to be tapped like a button
        /*let tapGestureRecognizer = UITapGestureRecognizer(target:self, action:#selector(ViewController.onCharacterChosen(_:)))
        player1Img.userInteractionEnabled = true
        player1Img.addGestureRecognizer(tapGestureRecognizer)
        player2Img.userInteractionEnabled = true
        player2Img.addGestureRecognizer(tapGestureRecognizer)
        */
        startGame()
        /*
        this code flips the image!!
        player1Img.transform = CGAffineTransformMakeScale(-1, 1);
        */
        
        //TODO: create both players. user decides name and type of player.
        
        //TODO: populate labels with hp
        
    }

    @IBAction func player1Attacks(sender: UIButton) {
        
    }
    
    @IBAction func player2Attacks(sender: UIButton) {
        
    }
    
    func onCharacterChosen(sender: UIImageView) {
        
    }
    
    func startGame() {
        printLbl.text = "Welcome to this shitty game!"
        delay(2) {
            self.printLbl.text = "Player1 choose your character"
        }
        
        
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }

}

