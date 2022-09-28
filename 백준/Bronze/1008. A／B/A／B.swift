import Foundation

var input = readLine()
if let input = input{
    let inputs = input.components(separatedBy: " ")
    let a = Double(inputs[0])!
    let b = Double(inputs[1])!
    print(a/b)
}
