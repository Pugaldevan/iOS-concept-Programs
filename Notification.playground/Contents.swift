import UIKit

// Notification

class Engineer {
    var name: String = ""
    
    func postNotification(data: [String: String]) {
        NotificationCenter.default.post(name: NSNotification.Name("category"), object: nil, userInfo: data)
    }
    
    func passDataToNotification() {
        postNotification(data: ["name": "Pugal"])
    }
}

class Department {
    // Track observer
    private var observer: NSObjectProtocol?

    func departMethod() {
        observer = NotificationCenter.default.addObserver(
            forName: NSNotification.Name("category"),
            object: nil,
            queue: nil
        ) { [weak self] notification in
            guard let self = self else { return }
            if let userInfo = notification.userInfo {
                print("Value: \(userInfo)")
            }
        }
    }

    // Remove observer to prevent issues
    deinit {
        if let observer = observer {
            NotificationCenter.default.removeObserver(observer)
        }
    }
}

// Instantiate Department and Engineer
let dep = Department()
dep.departMethod()

let eng = Engineer()
eng.passDataToNotification()
