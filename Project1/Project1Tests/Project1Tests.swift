import XCTest
@testable import Project1

final class Project1Tests: XCTestCase {
    
    let math = Mathematical()
    
    func testAddNumbers() {
        let result = math.addNumbers(x: 4, y: 3)
        XCTAssertEqual(result, 7)
    }
    
    func testMultiplyNumbers() {
        let result = math.multiplyNumbers(x: 4, y: 3)
        XCTAssertEqual(result, 12)
    }
    
    func testDivideNumbers() {
        do {
            let result = try math.divideNumbers(x: 10, y: 2)
            XCTAssertEqual(result, 5)
        } catch {
            XCTFail("Unexpected error: \(error)")
        }
    }
    
    func testSubstractNumbers() {
        let result = math.substractNumbers(x: 4, y: 3)
        XCTAssertEqual(result, 1)
    }
    
    func testAddNegativeNumbers() {
        let result = math.addNumbers(x: -2, y: -3)
        XCTAssertEqual(result, -5)
    }
    
    func testMultiplyNegativeNumbers() {
        let result = math.multiplyNumbers(x: -2, y: -3)
        XCTAssertEqual(result, 6)
    }
    
    func testGreaterThan() {
        let result = math.addNumbers(x: 5, y: 3)
        XCTAssertTrue(result > 4)
    }
    
    func testLessThan() {
        let result = math.substractNumbers(x: 5, y: 3)
        XCTAssertTrue(result < 4)
    }
    
    func testEqual() {
        let addResult = math.addNumbers(x: 2, y: 2)
        let multiplyResult = math.multiplyNumbers(x: 1, y: 4)
        XCTAssertEqual(addResult, multiplyResult)
    }
    
    func testNotEqual() {
        let addResult = math.addNumbers(x: 2, y: 2)
        let multiplyResult = math.multiplyNumbers(x: 3, y: 2)
        XCTAssertNotEqual(addResult, multiplyResult)
    }
    
    func testNil() {
        do {
            let result = try math.divideNumbers(x: 10, y: 0)
            XCTAssertNil(result)
        } catch is DivisionByZeroError {
            XCTAssert(true)
        } catch {
            XCTAssert(false)
        }
    }
    
    //test case for testing divide by zero exception
    func testDivideByZero() {
        XCTAssertThrowsError(try math.divideNumbers(x: 10, y: 0)) { error in
            XCTAssertTrue(error is DivisionByZeroError)
            guard let divisionByZeroError = error as? DivisionByZeroError else {
                return
            }
            XCTAssertEqual(divisionByZeroError.message, "Cannot divide by zero.")
        }
    }

    
}
