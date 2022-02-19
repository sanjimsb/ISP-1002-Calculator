//
//  ViewController.swift
//  Calculator
//
//  Created by Bipin Msb on 2022-02-19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calculatorView: UITextField!
    
    var equations:String = "";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func addEquation(value: String) {
        equations = equations + value
        calculatorView.text = equations
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
    
    @IBAction func clearAll(_ sender: Any) {
        equations = ""
        calculatorView.text = equations
    }
    @IBAction func clearOneByOne(_ sender: Any) {
        equations = String(equations.dropLast())
        calculatorView.text = equations
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
    
    
    
}

