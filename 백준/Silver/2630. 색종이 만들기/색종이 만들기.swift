import Foundation

func check(_ x: Int, _ y: Int, _ n: Int) {
    temp += 1
    
    var white = 0
    var blue = 0
    
    for i in x..<x+n {
        for j in y..<y+n {
            if input[i][j] == 0 {
                white += 1
            } else {
                blue += 1
            }
        }
    }
    
    if white == n * n {
        result[0] += 1
        return
    }
    
    if blue == n * n {
        result[1] += 1
        return
    }
    
    check(x, y, n/2)
    check(x, n/2+y, n/2)
    check(n/2+x, y, n/2)
    check(n/2+x, n/2+y, n/2)
}

let n = Int(readLine()!)!
var input = [[Int]]()
var result = [0, 0]
var temp = 0


for _ in 0..<n {
    input.append(readLine()!.split(separator: " ").map{ Int($0)! })
}

check(0, 0, n)
for i in result {
    print(i)
}