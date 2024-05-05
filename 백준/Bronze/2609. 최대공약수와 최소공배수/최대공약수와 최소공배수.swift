import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let n = input[0]
let m = input[1]

func gcd(a: Int, b: Int) -> Int {
    var n = a
    var m = b
    
    if n < m {
        (n, m) = (m, n)
    }
    
    if m == 0 {
        return n
    }
    
    return gcd(a: m, b: n % m)
}

print(gcd(a: n, b: m))
print(n * m / gcd(a: n, b: m))