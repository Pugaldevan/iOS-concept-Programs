import UIKit

// Queue

class Queue<T> {
    
    var queueArray: [T] = []
    
    func enqueue(_ x: T) {
        queueArray.append(x)
    }
    
    func dequeue() -> T?{
        return queueArray.removeFirst()
    }
    
    var arrayCount: Int {
        queueArray.count
    }
    
    func peek() -> T? {
        return queueArray.first
    }
}

let queueData = Queue<Int>()
queueData.queueArray = [1,5,6,12,2,9]

print("Queue data array : \(queueData.arrayCount)")

queueData.enqueue(10)
print("Push : \(queueData.queueArray)")

queueData.dequeue()
queueData.dequeue()
queueData.dequeue()
print("POP : \(queueData.queueArray)")

