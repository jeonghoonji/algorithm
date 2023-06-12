let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0]
let M = input[1]
let numberList = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()

var stack : [Int] = []

dfs()

func dfs(){
    if stack.count == M {
        print(stack.map{ String($0)}.joined(separator: " "))
        return
    }
    for i in 0..<N{
        if !stack.contains(numberList[i]){
            stack.append(numberList[i])
            dfs()
            stack.removeLast()
        }
    }
}