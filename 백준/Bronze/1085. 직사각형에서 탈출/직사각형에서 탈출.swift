import Foundation

var input = readLine()

if let input = input{
    
    let inputs = input.components(separatedBy: " ")

    let x = Int(inputs[0])!
    let y = Int(inputs[1])!
    let w = Int(inputs[2])!
    let h = Int(inputs[3])!
    
    var xw = abs(x - w)
    var yh = abs(y - h)
        
    if (xw < yh) && (xw < x) && (xw < y){
        print(xw)
    }else if( yh < xw ) && (yh < y) && (yh < x){
        print(yh)
    }else if(x < xw) && (x < yh) && ( x < y ){
        print(x)
    }else{
        print(y)
    }
}
