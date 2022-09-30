//
//  Cell.swift
//  IP05_TicTacToe
//
//  Created by Rai, Rhea on 9/30/22.
//

import Foundation
struct Cell {
    var index:Int
    var value:String
    var open:Bool
    
    let xTop:Int
    let yLeft:Int
    
    
    init(index: Int, xTop:Int, yLeft:Int) {
        self.index = index
        self.value = ""
        self.open = true
        
        self.xTop = xTop
        self.yLeft = yLeft
    }
    
}
