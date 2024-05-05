import Foundation

let k = Int(readLine()!)!
var result = 0
var stack: [Int] = []

for _ in 0..<k {
    let n = Int(readLine()!)!
    
    if n == 0 && !stack.isEmpty {
        stack.removeLast()
    } else {
        stack.append(n)
    }
}

for i in stack {
    result += i
}

print(result)