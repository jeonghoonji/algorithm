func solution(_ n: Int) -> Int {
    var isPrime = Array(repeating: true, count: n + 1)
    var primes: [Int] = []
    var result : Int = 0
    
    for i in 2...n {
        if isPrime[i] {
            result += 1

            var multiple = 2
            while i * multiple <= n {
                isPrime[i * multiple] = false
                multiple += 1
            }
        }
    }

    return result
}