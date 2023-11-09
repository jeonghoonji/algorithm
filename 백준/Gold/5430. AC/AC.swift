let T = Int(readLine()!)!

for _ in 0..<T{
    let p = readLine()!
    var n = Int(readLine()!)!
    let arr = readLine()!.dropFirst().dropLast().split(separator: ",").map { String($0) }
    var isReverse = false
    var front = 0
    var end = n
    for p in p {
        if p == "R" {
            isReverse.toggle()
            continue
        }
        if isReverse {
            end -= 1
        } else {
            front += 1
        }
        if front > end { break }
    }
    
    if front > end {
        print("error")
    } else {
        if isReverse {
            print("[\(arr[front..<end].reversed().joined(separator: ","))]")
        } else {
            print("[\(arr[front..<end].joined(separator: ","))]")
        }
    }
}