import Foundation

func solution(_ price:Int) -> Int {
    var result : Double = 0.0
    switch price{
    case 100000..<300000 :
        result = Double(price) * 0.95
        return Int(result)  
    case 300000..<500000 :
        result = Double(price) * 0.9
        return Int(result)
    case 500000... :
        result = Double(price) * 0.8
        return Int(result)
    default :
        return price
    }
}