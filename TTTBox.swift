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
    var cells: [Cell] = []
    
    
    let sideLength: Int
    let boxLeftX: Int
    let boxTopY: Int
    
    
    init() {
        self.sideLength = 0
        self.boxLeftX = 0
        self.boxTopY = 0

        for i in 0...8 {
            cells.insert(Cell(index: i, boxSideLength: sideLength, boxXLeft: boxLeftX, boxYTop: boxTopY), at: i)
        }
    }

    init(sideLength: Int, boxLeftX: Int, boxTopY: Int) {
        self.sideLength = sideLength
        self.boxLeftX = boxLeftX
        self.boxTopY = boxTopY
        for i in 0...8 {
            cells.insert(Cell(index: i, boxSideLength: sideLength, boxXLeft: boxLeftX, boxYTop: boxTopY), at:i)

        }
        //print(cells.count)
    }
    
    
    
    
    
}
