//
//  Cell.swift
//  IP05_TicTacToe
//
//  Created by Rai, Rhea on 9/30/22.
//

/*
 indexing:
 0  1   2
 3  4   5
 6  7   8

 */


import Foundation
struct Cell {
    var index:Int//0 to 9
    var value:String //X or O
    var open:Bool //empty or taken
    
    let xLeft:Int //pixel
    let yTop:Int //pixel
    let cellLength:Int //pixel
    
    init(index: Int, xLeft:Int, yTop:Int, cellLength:Int) {
        self.index = index
        self.value = ""
        self.open = true
        
        self.xLeft = xLeft
        self.yTop = yTop
        self.cellLength = cellLength
    }
    init(index: Int, boxSideLength:Int, boxXLeft:Int, boxYTop:Int) {
        self.index = index
        self.value = ""
        self.open = true
        
        self.cellLength = boxSideLength/3
       // print("\(index)\t\(cellLength)")
        
        self.xLeft = boxXLeft + (self.cellLength * (index % 3))
        //print("\t\t\(index)\txLeft:\(xLeft)")
        self.yTop = boxYTop + (self.cellLength * (index / 3))
        
    }
    
}
