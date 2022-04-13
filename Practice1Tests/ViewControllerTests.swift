//
//  ViewControllerTests.swift
//  Practice1Tests
//
//  Created by Luis Antonio de Oliveira Santos on 05/05/21.
//

import Foundation

import XCTest
@testable import Practice1

class ViewControllerTests: XCTestCase {

    private var viewController: ViewController!

    override func setUp() {
        super.setUp()
        viewController = ViewController()
    }

    override func tearDown() {
        super.tearDown()
        viewController = nil
    }

    func testShape() {

        // Given
        let expectedResult = "16"
        viewController.typeOfCalc = "Area of Shape"
    
        // When btnCalcArea is called
        viewController.btnCalcArea(1)

        // Then
        XCTAssertEqual(viewController.lblResultArea.text, expectedResult)
        
    }

}
