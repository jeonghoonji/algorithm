
let n = Int(readLine()!)!
var bridge = readLine()!.split(separator: " ").map { Int($0)! }
let s = Int(readLine()!)!

var visited = Array(repeating: false, count: n)
var count = 0

func bfs() {
    var queue = [s - 1]
    visited[s - 1] = true

    while !queue.isEmpty {
        let current = queue.removeFirst()

        
        let forward = current + bridge[current]
        if forward < n && !visited[forward] {
            visited[forward] = true
            queue.append(forward)
        }

        let backward = current - bridge[current]
        if backward >= 0 && !visited[backward] {
            visited[backward] = true
            queue.append(backward)
        }
    }
}

bfs()

for i in visited {
    if i {
        count += 1
    }
}
print(count)
