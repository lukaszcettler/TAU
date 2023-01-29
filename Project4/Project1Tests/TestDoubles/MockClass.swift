import Foundation
@testable import Project1


//Mock Object

/*
A mock is similar to a fake in the sense that it also implements the same interface as the real object, but with a different implementation.
The difference is that a mock object is used to check how many times a specific function has been called and with what argument,
rather than returning predefined results.
 */

class MockMathematical: Mathematical {
    private var calls: [String: Int] = [:]
    
    override func addNumbers(x: Int, y: Int) -> Int {
        calls["addNumbers"] = (calls["addNumbers"] ?? 0) + 1
        return x + y
    }
    
    override func multiplyNumbers(x: Int, y: Int) -> Int {
        calls["multiplyNumbers"] = (calls["multiplyNumbers"] ?? 0) + 1
        return x * y
    }
    
    override func substractNumbers(x: Int, y: Int) -> Int {
        calls["substractNumbers"] = (calls["substractNumbers"] ?? 0) + 1
        return x - y
    }
    
    func numberOfCalls(for method: String) -> Int {
        return calls[method, default: 0]
    }
}
