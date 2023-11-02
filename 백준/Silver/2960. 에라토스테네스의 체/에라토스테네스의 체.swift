
let input = readLine()!.split(separator: " ").map({Int(String($0))!})
let N = input[0]
let K = input[1]

var visited = Array(repeating: false, count: N+1)
var arr: [Int] = []

visited[0] = true
visited[1] = true

for i in 2...N {
    if visited[i] == true {
        continue
    }
    
    for j in stride(from: i, through: N, by: i) {
        if !visited[j]{
            visited[j] = true
            arr.append(j)
        }
    }
}

print(arr[K-1])

