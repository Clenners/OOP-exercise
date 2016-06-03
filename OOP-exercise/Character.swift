//
//  Character.swift
//  OOP-exercise
//
//  Created by Zach Mcmillan-Clenaghan on 03/06/2016.
//  Copyright © 2016 ClenTech. All rights reserved.
//

import Foundation

class Character {
    
    private var _hp = 100
    private var _attackPower = 10
    private var _name = "Player"
    
    var hp: Int {
        return _hp
    }
    
    var attackPower: Int {
        return _attackPower
    }
    
    var name: String {
        return _name
    }
    
    var isAlive: Bool {
        get {
            if hp <= 0 {
                return false
            }
            else {
                return true
            }
        }
    }
    
    init(hp: Int, attackPower: Int, name: String) {
        self._hp = hp
        self._attackPower = attackPower
        self._name = name
    }
    
    func attacked(attackPower: Int) {
        self._hp -= attackPower
    }
}