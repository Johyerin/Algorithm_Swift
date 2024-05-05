import Foundation

while true {
    var n = Int(readLine()!)!
    var isPrime = [Bool](repeating: true, count: 2 * n + 1)
    var count = 0
    
    if n == 0 {
        break
    }
    
    isPrime[1] = false
    
    for i in 2..<Int(sqrt(Double(2 * n)) + 1) {
        if isPrime[i] {
            var j = 2
            while i * j <= 2 * n {
                isPrime[i * j] = false
                j += 1
            }
        }
    }
    
    for i in (n + 1)...(2 * n) {
        if isPrime[i] {
            count += 1
        }
    }
    print(count)
}
