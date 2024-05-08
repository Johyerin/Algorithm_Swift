import Foundation

let n = Int(readLine()!)!
var nums = [Int](repeating: 0, count: 10001)
var result = ""

for _ in 0..<n {
    let input = Int(readLine()!)!
    
    nums[input] += 1
}

for i in 1..<10001 {
    result += String(repeating: "\(i)\n", count: nums[i])
}

print(result)