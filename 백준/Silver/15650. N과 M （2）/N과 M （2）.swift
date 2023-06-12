let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0]
let M = input[1]

var stack : [Int] = []

dfs(number : 1)

func dfs(number : Int){
    if stack.count == M {
        print(stack.map({ String($0)}).joined(separator: " "))
        return
    }
    for i in number..<N+1{
        if !stack.contains(i){
            stack.append(i)
            dfs(number : i+1)
            stack.removeLast()
        }
    }
}