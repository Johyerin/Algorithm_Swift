import Foundation

let n = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map{ Int($0)! }
var count = 0

for i in nums {
    var isPrime = true
    
    if i == 1 {
        continue
    }
    
    for j in 2..<i {
        if i % j == 0 {
            isPrime = false
        }
    }
    
    if isPrime {
        count += 1
    }
}

print(count)