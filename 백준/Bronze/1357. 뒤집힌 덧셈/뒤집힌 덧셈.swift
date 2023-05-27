
let input = readLine()!.split(separator: " ").map{Int($0)!}

func reverseNumber(number: Int) -> Int{
    let numberString = String(number)
    let reverse = String(numberString.reversed())
    return Int(reverse)!
}

print(reverseNumber(number: (reverseNumber(number: input[0]) + reverseNumber(number: input[1]))))
