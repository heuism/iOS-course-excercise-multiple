//
//  ViewController.swift
//  exercise-multiple
//
//  Created by Hien Tran on 25/06/2016.
//  Copyright © 2016 HienTran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Properties
    var inputNum: Int = 0
    var result: Int = 0
    let MAX_NUM = 50
    var displayStr: String = "Press Add to add!"
    
    @IBOutlet weak var appName: UIImageView!
    @IBOutlet weak var inputNumber: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var resultDisplay: UILabel!
    @IBOutlet weak var addBtn: UIButton!
    
    @IBAction func playGame(sender: AnyObject) {
        if inputNumber.text != nil && inputNumber.text != "" {
            appName.hidden = true
            inputNumber.hidden = true
            playBtn.hidden = true
            
            resultDisplay.hidden = false
            addBtn.hidden = false
            
            //resultDisplay.text = "Press Add to add!"
            updateResult()
            result = 0
            inputNum = Int(inputNumber.text!)!
            inputNumber.text = ""
            print(inputNum)
        }
    }
    
    @IBAction func addNumber(sender: AnyObject) {
        print("Here")
        if(result + inputNum <= MAX_NUM){
            displayStr = "\(result) + \(inputNum) = \(result+inputNum)"
            result += inputNum
            print(result)
            //resultDisplay.text = displayStr
            updateResult()
        }
        else{
            resetGame()
        }
    }
    
    func updateResult() {
        resultDisplay.text = displayStr
    }
    
    func resetGame() {
        appName.hidden = false
        inputNumber.hidden = false
        playBtn.hidden = false
        
        resultDisplay.hidden = true
        addBtn.hidden = true
    }
}

