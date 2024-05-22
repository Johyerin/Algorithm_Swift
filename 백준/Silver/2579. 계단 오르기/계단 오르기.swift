let n = Int(readLine()!)!
var stairs = [Int](repeating: 0, count: n + 1)
var dp = [Int](repeating: 0, count: n + 1)

for i in 1..<n + 1 {
    stairs[i] = Int(readLine()!)!
}

for i in 1..<n + 1 {
    if i == 1 {
        dp[1] = stairs[1]
    } else if i == 2 {
        dp[2] = stairs[1] + stairs[2]
    } else {
        dp[i] = (max(dp[i - 3] + stairs[i - 1], dp[i - 2]) + stairs[i])
    }
}
print(dp[n])