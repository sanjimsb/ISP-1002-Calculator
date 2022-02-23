//
//  ViewController.swift
//  Calculator
//
//  Created by Bipin Msb on 2022-02-19.
//

import UIKit

class ViewController: UIViewController {

    var equations:String = ""
    var showError: Bool = false
    var countSpecialChar = 0
    @IBOutlet weak var calculatorView: UILabel!
    @IBOutlet weak var calculatedResults: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func addEquation(value: String) {
        if(validation(getCurrentEquation: equations, currentValue: value)) {
            equations = equations + value
            calculatorView.text = equations
        }
        
    }
    
    func validation(getCurrentEquation: String, currentValue: String) -> Bool {
        let acceptedSymbols = ["+","*","/","-"]
        showError = false
        
        if((getCurrentEquation == "" && currentValue == "+")
            || (getCurrentEquation == "" && currentValue == "/")
            || (getCurrentEquation == "" && currentValue == "*")
            || (getCurrentEquation == "" && currentValue == "-")
        ) {
            equations = ""
            calculatorView.text = ""
            return false
        } else {
            for singleChar in (getCurrentEquation + currentValue) {
                if(acceptedSymbols.contains(String(singleChar))) {
                    countSpecialChar +=  1
                } else {
                    countSpecialChar = 0
                }
                print(countSpecialChar)
                if(countSpecialChar > 1) {
                    showError = true
                    break
                }
            }
        }
        return true
    }
    
    func alertError() {
        calculatedResults.text = "Format Error"
        calculatedResults.textColor = UIColor.red
    }
    
    @IBAction func clearAll(_ sender: Any) {
        showError = false
        equations = ""
        calculatorView.text = equations
        calculatedResults.text = "0";
        calculatedResults.textColor = UIColor.black
    }
    @IBAction func clearOneByOne(_ sender: Any) {
        showError = false
        equations = String(equations.dropLast())
        calculatorView.text = equations
        calculatedResults.text = "0";
        calculatedResults.textColor = UIColor.black
    }
    
    @IBAction func division(_ sender: Any) {
        addEquation(value: "/")
    }
    @IBAction func subtraction(_ sender: Any) {
        addEquation(value: "-")
    }
    @IBAction func multiplication(_ sender: Any) {
        addEquation(value: "*")
    }
    @IBAction func addition(_ sender: Any) {
        addEquation(value: "+")
    }
    @IBAction func point(_ sender: Any) {
        addEquation(value: ".")
    }
    @IBAction func zero(_ sender: Any) {
        addEquation(value: "0")
    }
    @IBAction func one(_ sender: Any) {
        addEquation(value: "1")
    }
    @IBAction func two(_ sender: Any) {
        addEquation(value: "2")
    }
    @IBAction func three(_ sender: Any) {
        addEquation(value: "3")
    }
    @IBAction func four(_ sender: Any) {
        addEquation(value: "4")
    }
    @IBAction func five(_ sender: Any) {
        addEquation(value: "5")
    }
    @IBAction func six(_ sender: Any) {
        addEquation(value: "6")
    }
    @IBAction func seven(_ sender: Any) {
        addEquation(value: "7")
    }
    @IBAction func eight(_ sender: Any) {
        addEquation(value: "8")
    }
    @IBAction func nine(_ sender: Any) {
        addEquation(value: "9")
    }
    
    @IBAction func answer(_ sender: Any) {
        print(showError)
        if(showError == false) {
            if(equations.last == "+" || equations.last == "*" || equations.last == "-" || equations.last == "/"  ) {
                equations = String(equations.dropLast())
                calculatorView.text = equations
            }
            let finalEquation = NSExpression(format: equations)
            let result = finalEquation.expressionValue(with: nil, context: nil) as! Double
            calculatedResults.text = String(result)
        }else{
            alertError()
        }
    }
    
    
}

