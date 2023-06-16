import Foundation

func solution(_ s:String) -> Int {
    var tempStr : String = ""
    var result : [String] = []
    
    func check(str: String) -> (String,Bool){
        switch str{
        case "zero":
            return ("0",true)
        case "one":
            return ("1",true)
        case "two":
            return ("2",true)
        case "three":
            return ("3",true)
        case "four":
            return ("4",true)
        case "five":
            return ("5",true)
        case "six":
            return ("6",true)
        case "seven":
            return ("7",true)
        case "eight":
            return ("8",true)
        case "nine":
            return ("9",true)
        default:
            return ("",false)
        }
    }
    
    for i in s{
        if Int(String(i)) != nil{
            result.append(String(i))
            tempStr = ""
            continue
        }
        tempStr += String(i)
        let checkStr = check(str: tempStr)
        if checkStr.1 == false{
            continue
        }else{
            result.append(checkStr.0)
            tempStr = ""
        }
      
    }
        
    return Int(result.joined())!
}