//
//  Creature.swift
//  GameOfLife
//
//  Created by Varsha Ramakrishnan on 6/25/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

import UIKit

class Creature: CCSprite
{
    //this sets the visible boolean equal to the isAlive boolean (when alive, appear)
    var isAlive = false {
        didSet {
            self.visible = isAlive
        }
            
    }
    var livingNeighborsCount = 0
    
    convenience override init()
    {
        //convenience intializers call other inits
        //this one sets the image of Creatures to bubble.png
        self.init(imageNamed: "GameOfLifeAssets/Assets/bubble.png")
        anchorPoint = CGPoint(x: 0, y: 0)
    }
}