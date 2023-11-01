import Foundation

let N = Int(readLine()!)!

var number: [Int] = []

for _ in 0..<N{
    let n = Int(readLine()!)!
    number.append(n)
}

print(averageValue())
print(medianValue())
print(modeValue())
print(rangeValue())

func averageValue() -> Int{
    let temp = round(Double(number.reduce(0,+)) / Double(number.count))
    return Int(temp)
}

func medianValue() -> Int{
    let temp = number.sorted()
    return temp[number.count/2]
}

func modeValue() -> Int{
    var modeDictionary = [Int:Int]()
    for i in number{
        if modeDictionary[i] == nil{
            modeDictionary[i] = 1
        }else{
            modeDictionary[i] = modeDictionary[i]! + 1
        }
    }
    let sorted = modeDictionary.sorted(by: {
        $0.value > $1.value
    })
    
    let max : Int = sorted[0].value
    
    let filter = sorted.filter({
        $0.value == max
    })
    
    let result = filter.sorted(by: {
        $0.key < $1.key
    })
    
    if result.count == 1{
        return result[0].key
    }else{
        return result[1].key
    }
    
}

func rangeValue() -> Int{
    return number.max()! - number.min()!
}