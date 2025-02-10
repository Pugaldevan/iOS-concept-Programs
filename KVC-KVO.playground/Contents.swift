import UIKit

/// KVC and KVO

class Person: NSObject {
    
    @objc dynamic var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let person = Person(name: "Pugal", age: 35)
print("Normal way of accessing: \(person.name)")

let personKVC = person.value(forKey: "name")
print("KVC way of accessing: \(personKVC ?? " ")")

// KVO

person.observe(\.name, options: [.old, .new]) { person, value in
    print("KVO old value : \(value.oldValue!)")
    print("KVO new value : \(value.newValue!)")
}

person.name = "Mark"
