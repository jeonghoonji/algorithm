let number = Int(readLine()!)!

var temp = number
var count : Int = 0

repeat{
    count += 1
    let first : Int = temp / 10
    let last : Int = temp % 10
    let sum = first + last
    temp = (last * 10) + sum % 10
}while temp != number

print(count)