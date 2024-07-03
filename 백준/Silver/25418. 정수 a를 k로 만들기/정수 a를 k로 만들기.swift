if let input = readLine() {
    let AK = input.split(separator: " ").map { Int($0)! }
    let a = AK[0]
    var k = AK[1]
    var count = 0
    
    while k != a {
        if k % 2 == 0 && k / 2 >= a {
            k /= 2
        } else {
            k -= 1
        }
        count += 1
    }
    
    print(count)
}