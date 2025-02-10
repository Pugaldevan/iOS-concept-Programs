import UIKit

// Associated type

protocol Stack {
    associatedtype Element
     func push(x: Element)
    func pop() -> Element?
}

class IntStack: Stack {
    typealias Element = Int
    
    func push(x: Element) {
        
    }
    func pop() -> Element? {
        return 0
        
    }
}
