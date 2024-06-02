import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input[0]
let m = input[1]
let v = input[2]

var graph : [[Int]] = Array(repeating: [], count: n+1)
var check = Array(repeating: false, count: n+1)
var result = ""

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    let a = input[0]
    let b = input[1]
    graph[a].append(b)
    graph[b].append(a)
    graph[a].sort()
    graph[b].sort()
}

dfs(v)
print(result)
result = ""
bfs(v)
print(result)

func dfs(_ now: Int) {
   check[now] = true
   result += "\(now) "
   
   for i in graph[now] {
       if !check[i] {
           dfs(i)
       }
   }
}

func bfs(_ now: Int) {
    var array: [Int] = [now]
    var visit = [Int]()
    
    while !array.isEmpty {
        let node = array.removeFirst()
        
        if !visit.contains(node) {
            visit.append(node)
            result += "\(node) "
            array.append(contentsOf: graph[node].sorted())
        }
    }
}
