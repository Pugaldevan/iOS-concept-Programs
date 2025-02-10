import UIKit

// InOut methods
"""
All parameters passed into a Swift function are constants, we can't change them. If you want to change, we can use inout.
"""
func checkInOutMethod(value a: inout Int, b: inout Int) {
    let tempValue = a
    a = b
    b = tempValue
    print("Value of a: \(a) and b:\(b)")
}
var a = 50
var b = 100
checkInOutMethod(value: &a, b: &b)


func doubleInPlace(number: inout Int) {
    number *= 2
}

var num = 5
doubleInPlace(number: &num)
