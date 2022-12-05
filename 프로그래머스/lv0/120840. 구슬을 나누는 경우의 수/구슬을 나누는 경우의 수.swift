import Foundation

func solution(_ balls:Int, _ share:Int) -> Int{
    var num1 : Double = 1.0
    var num2 : Double = 1.0
       
    if share == balls {
        return 1
    }
    
    for i in (share + 1)...balls{
        num1 *= Double(i)
    }
    for j in 1...balls - share{
        num2 *= Double(j)
    }
    
    return Int(num1/num2)
    
}





