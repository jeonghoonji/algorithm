func fibonacci(n: Int) -> Int {
    if n == 0{
        return 0
    }
    if n == 1 {
        return  1
    }
    
    var result = fibonacci(n: n - 1 ) + fibonacci(n: n - 2)
    return result
}

print(fibonacci(n: Int(readLine()!)!))