import UIKit

// Dependecy Injection

protocol Dependecy {
    func performAction()
}

class MyDependecyImplementation: Dependecy {
    func performAction() {
        print("Dependecy perform the action")
    }
}

class DInjection {
    
    let dependecy: Dependecy
    
    init(dependecy: Dependecy) {
        self.dependecy = dependecy
    }
    
    func useDependecy() {
        dependecy.performAction()
    }
}

let dependency = MyDependecyImplementation()
let myClass = DInjection(dependecy: dependency)
myClass.useDependecy()

