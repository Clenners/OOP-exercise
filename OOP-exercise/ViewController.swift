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
    @IBOutlet weak var player1Btn: UIButton!
    @IBOutlet weak var player2Btn: UIButton!
    @IBOutlet weak var restartYes: UIButton!
    
    var player1: Ogre!
    var player2: Soldier!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startGame()
        
        //TODO: create both players. user decides name and type of player.
        
    }

    @IBAction func player1Attacks(sender: UIButton) {
        if player2.isAlive {
            player2.attacked(player1.attackPower)
            player2HpLbl.text = "\(player2.hp) HP"
            printLbl.text = "\(player1.name) attacked \(player2.name)!"
            
            if !player2.isAlive {
                player2HpLbl.hidden = true
                player2Img.hidden = true
                printLbl.text = "\(player1.name) defeated \(player2.name)!"
                delay(3){
                    self.printLbl.text = "Restart?"
                    self.restartYes.hidden = false
                }
            }
            player2Btn.enabled = false
            delay(2) {
                self.player2Btn.enabled = true
                }
        }
    }
    
    @IBAction func player2Attacks(sender: UIButton) {
        if player1.isAlive {
            player1.attacked(player1.attackPower)
            player1HpLbl.text = "\(player1.hp) HP"
            printLbl.text = "\(player2.name) attacked \(player1.name)!"
            
            if !player1.isAlive {
                player1HpLbl.hidden = true
                player1Img.hidden = true
                printLbl.text = "\(player2.name) defeated \(player1.name)!"
                delay(2){
                    self.printLbl.text = "Restart?"
                    self.restartYes.hidden = false
                }
            }
            player1Btn.enabled = false
            delay(3) {
                self.player1Btn.enabled = true
            }
        }
    }
    
    @IBAction func onRestartGame(sender: AnyObject) {
        viewDidLoad()
    }
    
    func startGame() {
        printLbl.text = "Welcome to this shitty game!"
        
        restartYes.hidden = true
        player1Img.hidden = false
        player2Img.hidden = false
        player1HpLbl.hidden = false
        player2HpLbl.hidden = false
        player1 = Ogre(hp: 80, attackPower: 30, name: "Jazza")
        player2 = Soldier(hp: 110, attackPower: 20, name: "Zach")
        
        player1HpLbl.text = "\(player1.hp) HP"
        player2HpLbl.text = "\(player2.hp) HP"
        
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

