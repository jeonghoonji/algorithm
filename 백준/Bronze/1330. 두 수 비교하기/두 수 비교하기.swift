import Foundation

var input = readLine()

if let input = input{
    let inputs = input.components(separatedBy: " ")
    let a = Int(inputs[0])!
    let b = Int(inputs[1])!
    if a > b{
        print(">")
    }else if a < b{
        print("<")
    }else{
        print("==")
    }
}
