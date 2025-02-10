import UIKit

// Liscov substitution

protocol Withdrawal {
    func withdrawalAmount(amount: Double)
}

class SavingsAccount: Withdrawal {
    func withdrawalAmount(amount: Double) {
        print("savings withdrawal amount: \(amount)")
    }
}

class FixedDeposit{
    func withdrawalAmount(amount: Double) {
        fatalError("Fixed deposit can't withdraw the money")
    }
}

func canMakeWithdrawal(amount: Double, withdraw: Withdrawal) {
    withdraw.withdrawalAmount(amount: amount)
}

let savingsAccount = SavingsAccount()
savingsAccount.withdrawalAmount(amount: 150000)
