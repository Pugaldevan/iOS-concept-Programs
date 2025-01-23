import UIKit

//Mark:- FizzBuzz
func fizzbuzzMethod(input: Int) {
    
    for i in 1...input {
        if i % 3 == 0 && i % 5 == 0 {
            print("Fizz Buzz : \(String(i))")
        }
        else if i % 5 == 0 {
            print("Buzz : \(String(i))")
        }
        else if i % 3 == 0 {
            print("Fizz : \(String(i))")
        }
        else{
            print("Others : \(String(i))")
        }
    }
}

fizzbuzzMethod(input: 100)
