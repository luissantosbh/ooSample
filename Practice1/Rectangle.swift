//
//  Rectangle.swift
//  Practice1
//
//  Created by Luis Antonio de Oliveira Santos on 05/05/21.
//

import Foundation

public class Rectangle: Shape {

    var length: Float

    init(width: Int, height: Int, length: Float) {
        self.length = length
        super.init(width: width, height: height)
    }

    override func area() -> Float {
        let area = Float(width) * length
        return area
    }
}
