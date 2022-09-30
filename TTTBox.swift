//
//  TTTBox.swift
//  IP05_TicTacToe
//
//  Created by Rai, Rhea on 9/30/22.
//

import Foundation
import UIKit

class TTTBox{
    /*
     indexing:
     0  1   2
     3  4   5
     6  7   8
     
     values.count = 9
     */
    var cells: [Cell]
    
    
    let sideLength: Int
    let boxLeftX: Int
    let boxTopY: Int
    
    
    init() {
        self.sideLength = 0
        self.boxLeftX = 0
        self.boxTopY = 0
        for i in 0...8 {
            cells[i] = Cell(index: i)
        }
    }
    
    init(sideLength: Int, boxLeftX: Int, boxTopY: Int) {
        self.sideLength = sideLength
        self.boxLeftX = boxLeftX
        self.boxTopY = boxTopY
        for i in 0...8 {
            cells[i] = Cell(index: i)
        }
    }
    
    
//    func getCellTopLeftCoord(index: Int) -> (Int,Int) {
//        if(index >= cells.count || index < 0) {
//            print("WRONG INDEXES, CHECK TTTBOX FILE TO DEBUG")
//            return (0,0)
//        }
//        let x = (index%3) * (sideLength/3) + boxLeftX
//        let y = (index/3) * (sideLength/3) + boxTopY
//        return (x,y)
//    }
    
    
    
    
    
}
