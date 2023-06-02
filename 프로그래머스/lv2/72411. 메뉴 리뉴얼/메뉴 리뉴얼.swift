import Foundation

func solution(_ orders:[String], _ course:[Int]) -> [String] {
    
    var courseDictionary : [String:Int] = [:]
    var result : [String] = []
    
    func combinations(_ str: String, _ r: Int, _ prefix: String = "") {
        if r == 0 {
            let sortedPrefix = String(prefix.sorted())
            if var temp = courseDictionary[sortedPrefix]{
                temp += 1
                courseDictionary[sortedPrefix] = temp
            }else{
                courseDictionary[sortedPrefix] = 1
            }

        } else {
            for i in 0..<str.count {
                let index = str.index(str.startIndex, offsetBy: i)
                let char = String(str[index])
                let remainingStr = String( str [str.index(after: index)..<str.endIndex] )
                combinations(remainingStr, r - 1, prefix + char)
            }
        }
    }
    
    for i in course{
        for j in orders{
            combinations(j,i)
        }
    }
    
    for i in course{
        if let count = courseDictionary.filter({$0.key.count == i}).values.max(){
            let temp = courseDictionary.filter({$0.key.count == i && $0.value == count && $0.value >= 2}).keys
            result.append(contentsOf: temp)
        }
    }
    return result.sorted()
}