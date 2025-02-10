import UIKit

// Property Observer

class ProbsObserv {
    var name: String = "" {
        willSet {
            print("Name is about to change from \(name) to \(newValue)")
        }
        didSet {
            print("Name has changed from \(oldValue) to \(name)")
        }
    }
}

let propsObserv = ProbsObserv()
propsObserv.name = "Mark"
propsObserv.name = "Antony"
