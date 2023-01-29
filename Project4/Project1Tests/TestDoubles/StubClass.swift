import Foundation
@testable import Project1

//Stub Oject - is an object that returns a predefined value or throws a predefined exception when a method is called. 

class StubMathematical: Mathematical {
    override func addNumbers(x: Int, y: Int) -> Int {
        return 2
    }
    override func multiplyNumbers(x: Int, y: Int) -> Int {
        return 2
    }
    override func substractNumbers(x: Int, y: Int) -> Int {
        return 2
    }
    override func divideNumbers(x: Int, y: Int) throws -> Int {
        throw DivisionByZeroError("Dummy Error")
    }
}
let stubMathematical = StubMathematical()
