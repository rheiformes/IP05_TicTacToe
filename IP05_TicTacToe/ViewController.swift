//
//  ViewController.swift
//  IP05_TicTacToe
//
//  Created by Rai, Rhea on 9/30/22.
//

import UIKit

class ViewController: UIViewController {
    
    //screen values
    var screenWidth: Int = 0
    var screenHeight: Int = 0
    let xBuffer = 10
    let yBuffer = 100
    
    //set box
    var box0 = TTTBox()//? makes it nil by default
    var boxButtons: [Int:UIButton] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //set screen bounds
        let screenBounds: CGRect = UIScreen.main.bounds
        screenWidth = Int(screenBounds.width)
        screenHeight = Int(screenBounds.height)
        
        //set box
        box0 = TTTBox(sideLength: screenWidth-xBuffer, boxLeftX: xBuffer, boxTopY: yBuffer)
        
//        for cell in box0.values.enumerated() {
//            var buttonX = box0.getCellTopLeftCoord(index: cell.offset).0
//            var buttonY = box0.getCellTopLeftCoord(index: cell.offset).1
//            //print(String(buttonX) + " " + String(buttonY))
//            var cellButton = UIButton()
//
            
        //}
        
        
    }


}

