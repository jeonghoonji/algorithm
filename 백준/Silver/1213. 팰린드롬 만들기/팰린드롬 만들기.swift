let input = Array(readLine()!.map{String($0)})
var wordCount = [String: Int]()

var pattern : [String] = []
var halfString : String?
var palindrome : String = ""
var result : String = ""

for word in input {
    wordCount[word, default: 0] += 1
}
result = makePattern()

if result == "I'm Sorry Hansoo"{
    print("I'm Sorry Hansoo")
}else{
    print(result + (halfString ?? "") + result.reversed())
}

func makePattern() -> String {
    for (word, count) in wordCount {
        if count % 2 == 1 {
            if halfString == nil {
                halfString = word
            } else {
                return "I'm Sorry Hansoo"
            }
        }

        let halfCount = count / 2
        pattern.append(String(repeating: word, count: halfCount))
    }
    palindrome = pattern.sorted().joined()
    
    return palindrome
}
