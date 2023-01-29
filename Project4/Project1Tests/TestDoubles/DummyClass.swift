import Foundation
@testable import Project1

//Dummy Object - is an object that is used as a placeholder for a method call or function argument, and typically does not have any logic or functionality. 

class DummyMathematical: Mathematical {
    override func addNumbers(x: Int, y: Int) -> Int {
        return 0
    }
    override func multiplyNumbers(x: Int, y: Int) -> Int {
        return 0
    }
    override func substractNumbers(x: Int, y: Int) -> Int {
        return 0
    }
    override func divideNumbers(x: Int, y: Int) throws -> Int {
        return 0
    }
}
let dummyMathematical = DummyMathematical()
