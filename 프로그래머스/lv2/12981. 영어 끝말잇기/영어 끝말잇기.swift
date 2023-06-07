import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var speak : [String] = [words[0]]

    var last = words[0].last!
    
    for i in 1..<words.count{
        
        if speak.contains(words[i]) || words[i].first! != last{
            return [(i % n) + 1 , (i / n) + 1]
        }
        last = words[i].last!
        speak.append(words[i])
    }

    return [0,0]
}