//
//  ViewController.swift
//  Practice1
//
//  Created by Luis Antonio de Oliveira Santos on 05/05/21.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    // MARK: - PROPERTIES
    
    @IBOutlet weak var lblTitleArea: UILabel!
    @IBOutlet weak var lblResultArea: UILabel!
    @IBOutlet weak var pkvShape: UIPickerView!
    var typeOfCalc = "Area of Shape"
    let shapes = ["Area of Shape","Perimeter of Circle", "Area of Circle", "Area of Rectangle"]
    
    // MARK: - LIFE CYCLE
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - METHODS

    @IBAction func btnCalcArea(_ sender: Any) {
        if typeOfCalc == "Area of Shape" {
            let shape = Shape(width: 4, height: 4)
            let result = shape.area()
            lblResultArea.text = String(result)
        } else if typeOfCalc == "Perimeter of Circle" {
            let shape = Circle(width: 8, height: 8)
            let result = shape.perimeter()
            lblResultArea.text = String(result)
        } else if typeOfCalc == "Area of Circle" {
            let shape = Circle(width: 4, height: 4)
            let result = shape.area()
            lblResultArea.text = String(result)
        } else if typeOfCalc == "Area of Rectangle" {
            let shape = Rectangle(width: 4, height: 0, length: 4)
            let result = shape.area()
            lblResultArea.text = String(result)
        }
    }


    // MARK: - PICKER VIEW

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        shapes[row]
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return shapes.count
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        typeOfCalc = shapes[row]
    }
}

