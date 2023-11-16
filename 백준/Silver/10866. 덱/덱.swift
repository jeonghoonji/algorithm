let N = Int(readLine()!)!
var deque: [Int] = []

for _ in 0..<N{
    let input = readLine()!.split(separator: " ").map{ String($0)}
    
    if input[0] == "push_front"{
        deque.insert(Int(input[1])!, at: 0)
    }else if input[0] == "push_back"{
        deque.append(Int(input[1])!)
    }else if input[0] == "pop_front"{
        if deque.isEmpty{
            print(-1)
            continue
        }
        print(deque.removeFirst())
    }else if input[0] == "pop_back"{
        if deque.isEmpty{
            print(-1)
            continue
        }
        print(deque.removeLast())
    }else if input[0] == "size"{
        print(deque.count)
    }else if input[0] == "empty"{
        if deque.isEmpty{
            print(1)
        }else{
            print(0)
        }
    }else if input[0] == "front"{
        if deque.isEmpty{
            print(-1)
            continue
        }
        print(deque[0])
        
    }else if input[0] == "back"{
        if deque.isEmpty{
            print(-1)
            continue
        }
        print(deque[deque.count-1])
    }
    
}