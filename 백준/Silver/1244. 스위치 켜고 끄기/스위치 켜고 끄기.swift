let N = Int(readLine()!)!
var switchStatus = readLine()!.split(separator: " ").map{ Int(String($0))!}
let studentNumber = Int(readLine()!)!

switchStatus.insert(-1, at: 0)


for _ in 0..<studentNumber{
    let input = readLine()!.split(separator: " ").map{ Int(String($0))!}
    input[0] == 1 ? men() : women()
    
    func men(){
        for i in 1...N{
            if i % input[1] == 0{
                switchStatus[i] = switchStatus[i] == 0 ? 1 : 0
            }
        }
    }
    func women(){
        
        switchStatus[input[1]] = switchStatus[input[1]] == 0 ? 1 : 0
        
        for i in 1...N/2{
            if input[1]-i < 1 || input[1]+i > N {
                break
            }
            if switchStatus[input[1]-i] == switchStatus[input[1]+i]{
                switchStatus[input[1]-i] = switchStatus[input[1]-i] == 0 ? 1 : 0
                switchStatus[input[1]+i] = switchStatus[input[1]+i] == 0 ? 1 : 0
            }else{
                break
            }
        
        }
    }
    
}


for i in 1...N {
    print(switchStatus[i], terminator: " ")
    if i % 20 == 0 {
        print()
    }
}