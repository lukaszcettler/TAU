import Foundation

struct DivisionByZeroError: Error {
    let message: String

    init(_ message: String = "Cannot divide by zero.") {
        self.message = message
    }
}

class Mathematical {
    
    func addNumbers(x: Int, y: Int) -> Int {
        return x + y
    }
    
    func multiplyNumbers(x: Int, y: Int) -> Int {
        return x * y
    }
    
    func substractNumbers(x: Int, y: Int) -> Int {
        return x - y
    }
    
    func divideNumbers(x: Int, y: Int) throws -> Int {
        guard y != 0 else {
            throw DivisionByZeroError()
        }
        return x / y
    }
}
