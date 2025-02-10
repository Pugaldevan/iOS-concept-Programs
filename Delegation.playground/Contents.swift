import UIKit

// Delegation with Protocol

protocol Withdraw {
    func showAccountDetails(name: String, accountNumber: Int)
}

struct WithdrawMoney: Withdraw {
    func showAccountDetails(name: String, accountNumber: Int) {
        print("Account details name: \(name) and account Number \(accountNumber)")
    }
}

struct Employee {
    var name: String
    var accNo: Int
    var delegate: Withdraw
    
    func showAccountDetails() {
        delegate.showAccountDetails(name: name, accountNumber: accNo)
    }
}

var withdrawMoney = WithdrawMoney()
let emp = Employee(name: "Mark", accNo: 6004039238, delegate: withdrawMoney)
emp.showAccountDetails()
