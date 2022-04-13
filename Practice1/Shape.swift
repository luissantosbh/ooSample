//
//  Shape.swift
//  Practice1
//
//  Created by Luis Antonio de Oliveira Santos on 05/05/21.
//

import Foundation

public class Shape {

    // MARK: - PROPERTIES

    var width: Int
    var height: Int

    // MARK: - INITIALIZERS
    
    init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }

    // MARK: - PRIVATE FUNCTIONS

    func area() -> Float {
        let area = width * height
        let result = Float(area)

        return result
    }

}

