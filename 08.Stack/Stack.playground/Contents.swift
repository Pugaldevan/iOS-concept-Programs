import UIKit

// Stack

class Stack <T> {
    var stackArray: [T] = []
    
    func push(_ x: T) {
        stackArray.append(x)
    }
    
    func pop() -> T? {
        return stackArray.popLast()
    }
    
    var stackCount: Int {
        return stackArray.count
    }
    
    func peek() -> T? {
        return stackArray.last
    }
}

let stackData = Stack<Int>()
stackData.stackArray = [1,5,6,12,2,9]

print("Stack data array : \(stackData.stackCount)")

stackData.push(10)
print("Push : \(stackData.stackArray)")

stackData.pop()
stackData.pop()
stackData.pop()
print("POP : \(stackData.stackArray)")
