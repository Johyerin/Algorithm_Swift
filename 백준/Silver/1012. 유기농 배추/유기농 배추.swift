import Foundation

func dfs(_ x: Int, _ y: Int, _ check: inout [[Int]], _ m: Int, _ n: Int) {
    if x < 0 || x >= n || y < 0 || y >= m || check[x][y] != 1 { return }
    
    check[x][y] = 0
    
    dfs(x+1, y, &check, m, n)
    dfs(x-1, y, &check, m, n)
    dfs(x, y+1, &check, m, n)
    dfs(x, y-1, &check, m, n)
}

let t = Int(readLine()!)!

for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map({Int(String($0))!})
    let m = input[0]
    let n = input[1]
    let k = input[2]
    var check = Array(repeating: Array(repeating: 0, count:  m), count: n)
    var count = 0
    
    for _ in 0..<k {
        let input = readLine()!.split(separator: " ").map({Int(String($0))!})
        let x = input[0]
        let y = input[1]
        check[y][x] = 1
    }
    
    for i in 0..<n {
        for j in 0..<m {
            if check[i][j] == 1 {
                count += 1
                dfs(i, j, &check, m, n)
            }
        }
    }
    
    print(count)
}
