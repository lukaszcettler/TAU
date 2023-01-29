import Foundation
@testable import Project1

//Fake object - is an object that implements the same interface as the real object, but uses simpler or more efficient implementations for some or all of its methods.

class FakeMathematical: Mathematical {
    private var storedResults: [String: Int] = [:]
    
    func setResult(for method: String, result: Int) {
        storedResults[method] = result
    }
    
    override func addNumbers(x: Int, y: Int) -> Int {
        return storedResults["addNumbers", default: x + y]
    }
    
    override func multiplyNumbers(x: Int, y: Int) -> Int {
        return storedResults["multiplyNumbers", default: x * y]
    }
    
    override func substractNumbers(x: Int, y: Int) -> Int {
        return storedResults["substractNumbers", default: x - y]
    }
    
    override func divideNumbers(x: Int, y: Int) throws -> Int {
        guard y != 0 else {
            throw DivisionByZeroError()
        }
        return storedResults["divideNumbers", default: x / y]
    }
}
