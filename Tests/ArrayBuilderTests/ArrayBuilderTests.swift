import XCTest
@testable import ArrayBuilderModule

final class ArrayBuilderTests: XCTestCase {
    func testIf() throws {
        let falseCondition = { false }()
        let trueCondition = { true }()
        
        var withoutArrayBuilder: [String] = []
        withoutArrayBuilder.append("Lorem")
        if falseCondition {
            withoutArrayBuilder.append("Amen")
        }
        if trueCondition {
            withoutArrayBuilder.append("Ipsum")
        }
        withoutArrayBuilder.append("Dolor")

        let withArrayBuilder: [String] = .init {
            "Lorem"
            if falseCondition {
                "Amen"
            }
            if trueCondition {
                "Ipsum"
            }
            "Dolor"
        }
        
        XCTAssertEqual(withoutArrayBuilder, withArrayBuilder)
    }
    
    func testIfElse() throws {
        let falseCondition = { false }()
        
        let expected = ["Lorem", "Ipsum", "Dolor"]
        
        let actual: [String] = .init {
            "Lorem"
            if falseCondition {
                "Amen"
            } else {
                "Ipsum"
            }
            "Dolor"
        }
        
        XCTAssertEqual(expected, actual)
    }
    
    func testSwitch() throws {
        let number = { 5 }()
        
        let expected = ["Lorem", "Ipsum", "Dolor"]
        
        let actual: [String] = .init {
            "Lorem"
            switch number {
            case 3:
                "Amen"
            case 5:
                "Ipsum"
            default:
                Void()
            }
            "Dolor"
        }
        
        XCTAssertEqual(expected, actual)
    }
    
    func testForLoop() throws {
        let expected = ["Lorem", "0", "1", "2", "Dolor"]
        
        let actual: [String] = .init {
            "Lorem"
            for number in 0...2 {
                "\(number)"
            }
            "Dolor"
        }
        
        XCTAssertEqual(expected, actual)
    }
    
    func testEmpty() throws {
        let expected: [String] = []
        
        let actual: [String] = .init {
            
        }
        
        XCTAssertEqual(expected, actual)
    }
}
