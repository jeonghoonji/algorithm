var str : String = ""
let vowelList = ["a", "e", "i", "o", "u"]

while str != "#"{
    let input = Array(readLine()!.lowercased())
    str = String(input[0])
    var count : Int = 0
    for i in input{
        if vowelList.contains(String(i)){
            count += 1
        }
    }
    if str == "#"{
        break
    }
    print(count)
    
}
