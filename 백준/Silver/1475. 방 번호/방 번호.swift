var N = readLine()!.map{Int(String($0))!}
var count = Array(repeating: 0, count: 10)

for i in N{
    count[i] += 1
}
count[6] = (count[6]+count[9]+1)/2
count[9] = count[6]

print(count.max()!)