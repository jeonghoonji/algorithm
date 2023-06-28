func solution(_ s:String, _ n:Int) -> String {
    var result : [String] = []
    for i in s {
        var num = i.asciiValue!
        switch num{
        case 65...90:
            num = (num + UInt8(n) - 65) % 26 + 65
        case 97...122:
            num = (num + UInt8(n) - 97) % 26 + 97
        default:
            break
        }
        result.append(String(UnicodeScalar(num)))
    }
    
    return result.joined()
}