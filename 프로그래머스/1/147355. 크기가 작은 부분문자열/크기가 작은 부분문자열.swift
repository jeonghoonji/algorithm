import Foundation

func solution(_ t:String, _ p:String) -> Int {
    
    let tNumber = p.count
    var result: [Int] = []
    var arr = Array(t)
    
    for i in 0..<arr.count{
        var str: String = ""
        for j in 0..<tNumber{
            if i+j < arr.count{
                str += String(arr[i+j])
                continue
            }
            str = ""
        }
        if str == ""{
            continue
        }
        result.append(Int(str)!)
    }
    

    return result.filter{$0 <= Int(p)!}.count
}