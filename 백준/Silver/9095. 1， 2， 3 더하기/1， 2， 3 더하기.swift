let T = Int(readLine()!)!   

var cache : [Int] = Array(repeating: -1, count: 12)

cache[1] = 1
cache[2] = 2
cache[3] = 4

for _ in 0..<T{
    let num : Int = Int(readLine()!)!
    print(solve(num))
}

func solve(_ n: Int) -> Int {
    if cache[n] != -1 {
        return cache[n]
    }
    cache[n] = solve(n - 1) + solve(n - 2) + solve(n - 3)
    return cache[n]
}