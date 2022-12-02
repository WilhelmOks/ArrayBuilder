//
//  UseInFunctionsTests.swift
//  
//
//  Created by Wilhelm Oks on 01.12.22.
//

import XCTest
@testable import ArrayBuilderModule

final class UseInFunctionsTests: XCTestCase {
    @ArrayBuilder<String> func returningArray() -> [String] {
        let trueCondition = { true }()
        
        "Lorem"
        if trueCondition {
            "Ipsum"
        }
        "Dolor"
    }
    
    func parameterArray(@ArrayBuilder<String> _ array: () -> [String]) -> Int {
        return array().count
    }
    
    func testReturningArray() throws {
        let expected: [String] = ["Lorem", "Ipsum", "Dolor"]
        let actual = returningArray()
        XCTAssertEqual(expected, actual)
    }
    
    func testParameterArray() throws {
        let numberOfElements = parameterArray {
            let trueCondition = { true }()
            let falseCondition = { false }()
            
            "Lorem"
            if falseCondition {
                "Amen"
            }
            if trueCondition {
                "Ipsum"
            }
            "Dolor"
        }
        XCTAssertEqual(numberOfElements, 3)
    }
}
