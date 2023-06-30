import Foundation

func solution(_ quiz:[String]) -> [String] {
    var result : [String] = []
    
    for i in quiz{
        var arr = i.split(separator: " ")
        if arr[1] == "-"{
            if (Int(arr[0])! - Int(arr[2])!) != Int(arr[4])!{
                result.append("X")
            }else{
                result.append("O")
            }
        }else{
            if (Int(arr[0])! + Int(arr[2])!) != Int(arr[4])!{
                result.append("X")
            }else{
                result.append("O")
            }
        }

    }

    return result
}