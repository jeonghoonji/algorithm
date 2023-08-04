import Foundation

func solution(_ code:String) -> String {
    var arrCode = Array(code)
    var result : [String] = []
    var mode : Int = 0
    
    for idx in 0..<arrCode.count{
        if mode == 0 {
            if arrCode[idx] == "1"{
                mode = 1
            }else{
                if idx % 2 == 0 {
                    result.append(String(arrCode[idx]))
                }
            }
        }else{
            if arrCode[idx] == "1"{
                mode = 0
            }else{
                if idx % 2 != 0 {
                    result.append(String(arrCode[idx]))
                }
            }
        }
    }
    
    if result.count == 0{
        return "EMPTY"
    }
    return result.joined()
}