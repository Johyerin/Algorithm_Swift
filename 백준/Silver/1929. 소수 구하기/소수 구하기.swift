import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let m = input[0]
let n = input[1]

var isPrimeNum = [Bool](repeating: true, count: n + 1)
isPrimeNum[1] = false


for i in 2..<Int(sqrt(Double(n))+1) {
    if isPrimeNum[i] {
        var j = 2
        while i * j <= n {
            isPrimeNum[i * j] = false
            j += 1
        }
    }
}

for i in m...n {
    if isPrimeNum[i] {
        print(i)
    }
}
