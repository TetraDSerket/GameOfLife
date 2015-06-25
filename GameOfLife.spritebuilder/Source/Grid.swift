//
//  Grid.swift
//  GameOfLife
//
//  Created by Varsha Ramakrishnan on 6/25/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

import UIKit

let GridRows = 8
let GridColumns = 10

class Grid: CCSprite
{
    var totalAlive = 0
    var generation = 0
    
    var cellWidth: CGFloat = 0
    var cellHeight: CGFloat = 0
    var gridArray: [[Creature]]!
    
    // Add Grid methods below here
    //acts when app is opened
    override func onEnter()
    {
        super.onEnter()
        //method defined below
        setupGrid()
        userInteractionEnabled = true
    }
    
    //sets up grid
    func setupGrid()
    {
        //initializes cell width to be grid width / number of cells in width
        cellWidth = contentSize.width / CGFloat(GridColumns)
        //initializes cell height to be grid height / number of cells in height
        cellHeight = contentSize.height / CGFloat(GridRows)
        
        //creates empty grid array
        gridArray = []
        
        //iterates through rows
        for row in 0..<GridRows
        {
            //add new row
            gridArray.append([])
            
            for column in 0..<GridColumns
            {
                //create creature
                var creature = Creature()
                //sets position of creature depending on row and column
                creature.position = CGPoint(x: cellWidth * CGFloat(column), y: cellHeight * CGFloat(row))
                //add the creature to the grid object
                addChild(creature)
                //add the creature to the grid array
                gridArray[row].append(creature)
                
                creature.isAlive = false
            }
        }
    }
}
