//
//  ViewController.swift
//  Calculator
//
//  Created by Александр Васильевич on 09.08.20.
//  Copyright © 2020 Александр Васильевич. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numberFromScrean : Double = 0;
    var firstNum : Double = 0;
    var operation : Int = 0;
    var mathSign : Bool = false;
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func digits(_ sender: UIButton) {
        
        if mathSign == true {
            result.text = String(sender.tag)
            mathSign = false
        }
        else {
            result.text = result.text! + String(sender.tag)
        }
        
        numberFromScrean = Double(result.text!)!
    }
    
    
    @IBAction func buttons(_ sender: UIButton) {
        if result.text != "" && sender.tag != 10 && sender.tag != 15 {
            if result.text != "÷" && result.text != "x" && result.text != "-" && result.text != "+" {
                firstNum = Double(result.text!)!
            }
            if sender.tag == 11 { // Деление
                result.text = "÷";
            }
            else if sender.tag == 12 { // Умножение
                result.text = "x";
            }
            else if sender.tag == 13 { // Вычитание
                result.text = "-";
            }
            else if sender.tag == 14 { // Добавление
                result.text = "+";
            }
            
            operation = sender.tag
            mathSign = true;
        }
        else if sender.tag == 15 { // знак равно
            if operation == 11 {
                result.text = String(firstNum / numberFromScrean)
            }
            else if operation == 12 {
                result.text = String(firstNum * numberFromScrean)
            }
            else if operation == 13 {
                result.text = String(firstNum - numberFromScrean)
            }
            else if operation == 14 {
                result.text = String(firstNum + numberFromScrean)
            }
        }
        else if sender.tag == 10 { // очистить
            result.text = ""
            firstNum = 0;
            numberFromScrean = 0;
            operation = 0;
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

