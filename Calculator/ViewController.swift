//
//  ViewController.swift
//  Calculator
//
//  Created by 黃健偉 on 2017/12/12.
//  Copyright © 2017年 黃健偉. All rights reserved.
//

import UIKit

enum Sign {
    case nothing
    case plus
    case minus
    case mulit
    case division
}

class ViewController: UIViewController {
    
    var firstNumber: Double = 0.0
    var secondNumber: Double = 0.0
    var resultNumber: Double = 0.0
    var memoryNumber: Double = 0.0
    var tempNumber: Double = 0.0
    var currentSign = Sign.nothing
    var isMemoryEmpty: Bool = true
    
    @IBOutlet var resultBar: UILabel!
    @IBOutlet var memoryBar: UILabel!
    @IBAction func number1(_ sender: Any) {
        if (resultBar.text == "0") {
            resultBar.text! = "1"
        } else {
            resultBar.text! += "1"
        }
    }
    @IBAction func number2(_ sender: Any) {
        if (resultBar.text == "0") {
            resultBar.text! = "2"
        } else {
            resultBar.text! += "2"
        }
    }
    @IBAction func number3(_ sender: Any) {
        if (resultBar.text == "0") {
            resultBar.text! = "3"
        } else {
            resultBar.text! += "3"
        }
    }
    @IBAction func number4(_ sender: Any) {
        if (resultBar.text == "0") {
            resultBar.text! = "4"
        } else {
            resultBar.text! += "4"
        }
    }
    @IBAction func number5(_ sender: Any) {
        if (resultBar.text == "0") {
            resultBar.text! = "5"
        } else {
            resultBar.text! += "5"
        }
    }
    @IBAction func number6(_ sender: Any) {
        if (resultBar.text == "0") {
            resultBar.text! = "6"
        } else {
            resultBar.text! += "6"
        }
    }
    @IBAction func number7(_ sender: Any) {
        if (resultBar.text == "0") {
            resultBar.text! = "7"
        } else {
            resultBar.text! += "7"
        }
    }
    @IBAction func number8(_ sender: Any) {
        if (resultBar.text == "0") {
            resultBar.text! = "8"
        } else {
            resultBar.text! += "8"
        }
    }
    @IBAction func number9(_ sender: Any) {
        if (resultBar.text == "0") {
            resultBar.text! = "9"
        } else {
            resultBar.text! += "9"
        }
    }
    @IBAction func number0(_ sender: Any) {
        if (resultBar.text == "0") {
            resultBar.text! = "0"
        } else {
            resultBar.text! += "0"
        }
    }
    @IBAction func point(_ sender: Any) {
        if !(resultBar.text!.contains(".")) {
            resultBar.text! += "."
        }
    }
    @IBAction func plus(_ sender: Any) {
        if (Double(resultBar.text!) != 0) {
            firstNumber = Double(resultBar.text!)!
            resultBar.text! = "0"
        }
        currentSign = Sign.plus
    }
    @IBAction func minus(_ sender: Any) {
        if (Double(resultBar.text!) != 0) {
            firstNumber = Double(resultBar.text!)!
            resultBar.text! = "0"
        }
        currentSign = Sign.minus
    }
    @IBAction func multi(_ sender: Any) {
        if (Double(resultBar.text!) != 0) {
            firstNumber = Double(resultBar.text!)!
            resultBar.text! = "0"
        }
        currentSign = Sign.mulit
    }
    @IBAction func division(_ sender: Any) {
        if (Double(resultBar.text!) != 0) {
            firstNumber = Double(resultBar.text!)!
            resultBar.text! = "0"
        }
        currentSign = Sign.division
    }
    @IBAction func equal(_ sender: Any) {
        secondNumber = Double(resultBar.text!)!
        switch currentSign {
        case .plus:
            resultNumber = firstNumber + secondNumber
        case .minus:
            resultNumber = firstNumber - secondNumber
        case .mulit:
            resultNumber = firstNumber * secondNumber
        case .division:
            resultNumber = firstNumber / secondNumber
        case .nothing:
            break
        }
        if ((resultNumber - Double(Int(resultNumber))) == 0.0) {
            resultBar.text! = String(Int(resultNumber))
        } else {
            resultBar.text! = String(resultNumber)
        }
        currentSign = Sign.nothing
    }
    @IBAction func all_clear(_ sender: Any) {
        firstNumber = 0
        secondNumber = 0
        resultNumber = 0
        memoryNumber = 0
        resultBar.text! = "0"
        memoryBar.text! = "0"
        currentSign = Sign.nothing
    }
    @IBAction func clean(_ sender: Any) {
        firstNumber = 0
        secondNumber = 0
        resultNumber = 0
        resultBar.text! = "0"
        currentSign = Sign.nothing
    }
    @IBAction func memory_remeber(_ sender: Any) {
        if (isMemoryEmpty == true) {
            isMemoryEmpty = false
            memoryNumber = Double(resultBar.text!)!
            if ((memoryNumber - Double(Int(memoryNumber))) == 0.0) {
                memoryBar.text! = String(Int(memoryNumber))
            } else {
                memoryBar.text! = String(memoryNumber)
            }
        } else {
            isMemoryEmpty = true
            if ((memoryNumber - Double(Int(memoryNumber))) == 0.0) {
                resultBar.text! = String(Int(memoryNumber))
            } else {
                resultBar.text! = String(memoryNumber)
            }
            memoryBar.text! = "0"
        }
    }
    @IBAction func back(_ sender: Any) {
        resultBar.text!.remove(at: resultBar.text!.index(before: resultBar.text!.endIndex))
        if (resultBar.text! == "") {
            resultBar.text! = "0"
        } else {
            tempNumber = Double(resultBar.text!)!
            if ((tempNumber - Double(Int(tempNumber))) == 0.0) {
                resultBar.text! = String(Int(tempNumber))
            } else {
                resultBar.text! = String(tempNumber)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resultBar.text! = "0"
        memoryBar.text! = "0"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

