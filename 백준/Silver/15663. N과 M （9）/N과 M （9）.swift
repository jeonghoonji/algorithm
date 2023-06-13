let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0]
let M = input[1]

let numberList = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()

var stack : [Int] = []
var visited = Array(repeating: false, count: N)

dfs()

func dfs() {
    if stack.count == M {
        print(stack.map { String($0) }.joined(separator: " "))
        return
    }

    var temp = Set<Int>()
    for i in 0..<N {
        if visited[i] || temp.contains(numberList[i]) {
            continue
        }
        
        visited[i] = true
        stack.append(numberList[i])
        temp.insert(numberList[i])
        dfs()
        visited[i] = false
        stack.removeLast()
    }
}