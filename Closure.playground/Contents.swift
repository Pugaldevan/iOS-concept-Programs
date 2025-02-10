import UIKit

// Closure Sample
class closure {
    
    func b(a: ()->()) {
        func a() {
            print("inner function")
        }
    }
}

let closurer = closure()
closurer.b {
    print("closure call")
}
