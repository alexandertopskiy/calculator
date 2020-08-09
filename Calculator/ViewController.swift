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
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func digits(_ sender: UIButton) {
        result.text = result.text! + String(sender.tag)
        numberFromScrean = Double(result.text!)!
    }
    
    
    @IBAction func buttons(_ sender: UIButton) {
        if result.text != "" {
            if sender.tag == 11 { // Деление
                
            }
            else if sender.tag == 12 { // Умножение
                
            }
            else if sender.tag == 13 { // Вычитание
                
            }
            else if sender.tag == 14 { // Добавление
                
            }
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

