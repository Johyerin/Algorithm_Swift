import Foundation

let n = Int(readLine()!)!
var negativeNums = [Int](repeating: 0, count: 1001)
var positiveNums = [Int](repeating: 0, count: 1001)
var result = ""

for _ in 0..<n {
    let input = Int(readLine()!)!
    
    if input < 0 {
        negativeNums[abs(input)] += 1
    } else {
        positiveNums[input] += 1
    }
}

for i in stride(from: 1000, through: 1, by: -1) {
    result += String(repeating: "-\(i)\n", count: negativeNums[i])
}

for i in 0..<1001 {
    result += String(repeating: "\(i)\n", count: positiveNums[i])
}

print(result)