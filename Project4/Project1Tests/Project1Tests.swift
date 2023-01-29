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
    
    //Dummy test
    
    func testDummyAddNumbers() {
        let dummyMath = DummyMathematical()
        let result = dummyMath.addNumbers(x: 4, y: 3)
        XCTAssertEqual(result, 0) // Dummy objects often return a default value such as 0
    }
    
    //Stub test
    
    func testUsingStubObject() {
        let stubMathematical = StubMathematical()
        let addResult = stubMathematical.addNumbers(x: 1, y: 2)
        assert(addResult == 2) // expected result since StubMathematical returns 2 for all methods
        let divideResult = try? stubMathematical.divideNumbers(x: 4, y: 2)
        assert(divideResult == nil) // expected result since StubMathematical throws error for all methods

    }
    
    //Fake test
    
    func testUsingFakeObject(){
        let fakeMathematical = FakeMathematical()
        let addResult = fakeMathematical.addNumbers(x: 1, y: 2)
        assert(addResult == 3) // expected result
    }
    
    //Mock test
    
    func testMockMathematical() {
        let mock = MockMathematical()
        let addResult = mock.addNumbers(x: 1, y: 2)
        let multiplyResult = mock.multiplyNumbers(x: 2, y: 3)
        let substractResult = mock.substractNumbers(x: 3, y: 2)
        XCTAssertEqual(addResult, 3)
        XCTAssertEqual(multiplyResult, 6)
        XCTAssertEqual(substractResult, 1)
        XCTAssertEqual(mock.numberOfCalls(for: "addNumbers"), 1)
        XCTAssertEqual(mock.numberOfCalls(for: "multiplyNumbers"), 1)
        XCTAssertEqual(mock.numberOfCalls(for: "substractNumbers"), 1)
    }
    
}
