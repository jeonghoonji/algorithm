let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0]
let M = input[1]
let numberList = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()

var stack : [Int] = []

dfs(number: 0)

func dfs(number: Int){
    if stack.count == M {
        print(stack.map{ String($0)}.joined(separator: " "))
        return
    }
    for i in number..<N{
        stack.append(numberList[i])
        dfs(number : i)
        stack.removeLast()
    }
}
