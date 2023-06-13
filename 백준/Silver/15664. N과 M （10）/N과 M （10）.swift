let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0]
let M = input[1]

let numberList = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()

var stack : [Int] = []
var visited = Array(repeating: false, count: N)

dfs(number: 0)

func dfs(number: Int) {
    if stack.count == M {
        print(stack.map { String($0) }.joined(separator: " "))
        return
    }

    var temp = Set<Int>()
    for i in number..<N {
        if visited[i] || temp.contains(numberList[i]) {
            continue
        }
        
        visited[i] = true
        stack.append(numberList[i])
        temp.insert(numberList[i])
        dfs(number: i+1)
        visited[i] = false
        stack.removeLast()
    }
}