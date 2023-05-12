let n = Int(readLine()!)!

var dp = [Int](repeating: -1, count: 100001)

dp[0] = 0
dp[1] = -1
dp[2] = 1
dp[3] = -1

for i in 1...n{
    
    if i >= 2 && dp[i - 2] != -1 {
        dp[i] = dp[i - 2] + 1
    }
    if i >= 5 && dp[i - 5] != -1 {
        if dp[i] == -1 {
            dp[i] = dp[i - 5] + 1
        }else{
            dp[i] = min(dp[i] , dp[i - 5] + 1)
        }
    }

}
print(dp[n])
