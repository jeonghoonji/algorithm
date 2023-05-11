let countA = Int(readLine()!)!
let A = readLine()!.split(separator: " ").map { Int($0)! }

var cache : [Int] = Array(repeating: 1, count: countA + 1)

for i in 1..<countA{
    for j in 0..<i{
        if A[j] < A[i] {
            cache[i] = max( cache[i] , cache[j] + 1)
        }
    }
}
print(cache.max()!)
