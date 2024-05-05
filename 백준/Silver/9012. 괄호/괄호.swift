import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    let input = readLine()!
    var count = 0
    
    for i in input {
        if i == "(" {
            count += 1
        } else if i == ")" {
            count -= 1
            if count < 0 {
                break
            }
        }
    }
    
    if count == 0 {
        print("YES")
    } else {
        print("NO")
    }
}