//
//  Circle.swift
//  Practice1
//
//  Created by Luis Antonio de Oliveira Santos on 05/05/21.
//

import Foundation

public class Circle: Shape {

    // Area of circle: A = πr2

    override func area() -> Float {
        let radius = Float(width/2)
        let result = radius * radius * Float.pi
        return result
    }

    // Perimeter of Circle: C=2πr
    
    func perimeter() -> Float {
        let radius = Float(width / 2)
        let perimeter = 2 * Float.pi * radius
        return perimeter
    }

}
