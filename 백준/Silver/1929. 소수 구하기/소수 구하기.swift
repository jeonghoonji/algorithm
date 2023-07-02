let input = readLine()!.split(separator: " ").map { Int($0)! }
let M = input[0]
let N = input[1]

var isPrime = Array(repeating: true, count: N+1)
var primes : [Int] = []
for i in 2...N{
    if isPrime[i]{
        primes.append(i)
        var multiple = 2
        while i * multiple <= N {
            isPrime[i * multiple] = false
            multiple += 1
        }
    }
}

for i in primes{
    if i >= M {
        print(i)
    }
}