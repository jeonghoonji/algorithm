var N = Int(readLine()!)!

var i = 1
var result = 0
while i <= N {
    result += (N-i+1)
    i *= 10
}

print(result)