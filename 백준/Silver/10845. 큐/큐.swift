import Foundation

let n = Int(readLine()!)!
var queue: [Int] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    
    switch input[0] {
    case "push":
        push(Int(input[1])!)
    case "pop":
        print(pop())
    case "size":
        print(size())
    case "empty":
        print(empty())
    case "front":
        print(front())
    case "back":
        print(back())
    default:
        break
    }
    
}

func push(_ x: Int) {
    return queue.append(x)
}

func pop() -> Int {
    if queue.isEmpty {
        return -1
    } else {
        return queue.removeFirst()
    }
}

func size() -> Int {
    return queue.count
}

func empty() -> Int {
    return queue.isEmpty ? 1 : 0
}

func front() -> Int {
    return queue.first ?? -1
}

func back() -> Int {
    return queue.last ?? -1
}