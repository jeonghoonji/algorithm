var result : [Int] = []

for i in 1..<10000{
    calc(n: i)
}

for i in 1..<10000{
    if result.contains(i){
        continue
    }
    print(i)
}

func calc(n: Int){
    var orignal = n
    for i in String(n){
       orignal += Int(String(i))!
    }
    result.append(orignal)
}