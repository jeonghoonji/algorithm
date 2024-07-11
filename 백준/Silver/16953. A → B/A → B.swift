let AB = readLine()!.split(separator: " ").map{ Int($0)! }
let a = AB[0], b = AB[1]
var count : Int = 1
print(bfs())
func bfs() -> Int{
    var queue = [(a,1)]
    while !queue.isEmpty{
        let current = queue.removeFirst()
        
        if current.0 == b{
            return current.1
        }
        if current.0 > b{
            continue
        }
        queue.append((current.0 * 2,current.1+1))
        queue.append((current.0 * 10 + 1,current.1+1))
    }
    return -1
}