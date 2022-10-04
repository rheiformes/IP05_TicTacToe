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
    var boxButtons: [UIButton] = []
    
    //set player turn
    var player1Turn = true
    var infoLbl = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //set screen bounds
        let screenBounds: CGRect = UIScreen.main.bounds
        screenWidth = Int(screenBounds.width)
        screenHeight = Int(screenBounds.height)
        
        
        /*
         indexing:
         0  1   2
         3  4   5
         6  7   8
         
         boxButtons.count = 9
         */
        
        //set info lbl
        infoLbl.frame =  CGRect(x: xBuffer, y: yBuffer, width: screenWidth, height: 4 * yBuffer/5)
        infoLbl.textColor = UIColor.black
        if(player1Turn) {
            infoLbl.text = "It's player 1's Turn"
        }
        else {
            infoLbl.text = "It's player 2's Turn"
        }
        view.addSubview(infoLbl)
        
        //set box
        //print(screenWidth)
        box0 = TTTBox(sideLength: screenWidth - 2*xBuffer, boxLeftX: xBuffer, boxTopY: 2*yBuffer)
        
        
        for i in 0...8 {
            var tempButton = UIButton()
            let tempX = box0.cells[i].xLeft
            let tempY = box0.cells[i].yTop
            let tempL = box0.cells[i].cellLength
            tempButton.frame = CGRect(x: tempX, y: tempY, width: tempL, height: tempL)
            tempButton.layer.borderColor = UIColor.black.cgColor
            tempButton.layer.borderWidth = 1
            tempButton.tag = i
            tempButton.addTarget(self, action: #selector(cellPressed(_:)), for: .touchUpInside)
        
            
            boxButtons.insert(tempButton, at: i)
            
        }
        for button in boxButtons {
            view.addSubview(button)
        }
        
    }
    
    @objc func cellPressed(_ sender: UIButton!) {
        let index = sender.tag
        if (box0.cells[index].open) {
            if(player1Turn) { box0.cells[index].value = "X" }
            else { box0.cells[index].value = "O"}
            player1Turn = !player1Turn
            if(player1Turn) {
                infoLbl.text = "It's player 1's Turn"
            }
            else {
                infoLbl.text = "It's player 2's Turn"
            }
            
            sender.setTitleColor(UIColor.black, for: .normal)
            sender.setTitle(box0.cells[index].value, for: .normal)
            box0.cells[index].open = false
        }
        else {} //already filled
        
        //chekc for score
    }


}

