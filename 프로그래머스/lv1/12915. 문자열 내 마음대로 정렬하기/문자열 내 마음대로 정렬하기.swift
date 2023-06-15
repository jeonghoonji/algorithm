func solution(_ strings: [String], _ n: Int) -> [String] {
    let result = strings.sorted {
        let char1 = $0[$0.index($0.startIndex, offsetBy: n)]
        let char2 = $1[$1.index($1.startIndex, offsetBy: n)]
        if char1 == char2 {
            return $0 < $1
        } else {
            return char1 < char2
        }
    }
    return result
}