func solution(_ m:Int, _ n:Int, _ board:[String]) -> Int {
    
    struct Tuple: Hashable{
        let x : Int
        let y : Int
    }
    
    var lineUp : [[String]] = []
    var blockIndex = Set<Tuple>()
    var possible : Bool = true
    var result : Int = 0
    
    for j in Array(board){
        var temp : [String] = []
        for k in j{
            temp.append(String(k))
        }
        lineUp.append(temp)
    }
    
    func findBlockIndex(){
        for i in 0..<lineUp.count{
            for j in 0..<lineUp[i].count{
                if lineUp[i][j] == "0"{
                    continue
                }
                checking(x: i, y: j, element: lineUp[i][j])
            }
        }
        
        if blockIndex.isEmpty{
            possible = false
        }
    }

    
    func checking(x: Int, y: Int, element: String) {
        // 오른쪽,아래,대각선
        let dx = [0,1,1]
        let dy = [1,0,1]

        for i in 0..<3{
            if isValid(x: x+dx[i], y: y+dy[i]){
                if lineUp[x+dx[i]][y+dy[i]] != element{
                    return
                }
            }else{
                return
            }
        }
        
        possible = true
        blockIndex.insert(Tuple(x: x, y: y))
        for i in 0..<3{
            if isValid(x: x+dx[i], y: y+dy[i]){
                blockIndex.insert(Tuple(x: x+dx[i], y: y+dy[i]))
            }
        }
        return
    }
    
    func isValid(x: Int, y: Int) -> Bool{
        if x < m && y < n {
            return true
        }
        return false
    }
    
    func removeBlock(){
        for i in blockIndex{
            lineUp[i.x][i.y] = "0"
        }
        result += blockIndex.count
        blockIndex = []
    }
    
    func rebuildingBlock(){
        for i in stride(from: lineUp.count-1, through: 0, by: -1){
            for j in  stride(from: lineUp[i].count-1, through: 0, by: -1){
                if lineUp[i][j] != "0"{
                    movingDownBlock(x: i, y: j)
                }
            }
        }
       
    }
    
    func movingDownBlock(x: Int, y:Int){
        if isValid(x: x+1, y: y){
            if lineUp[x+1][y] == "0"{
                lineUp[x+1][y] = lineUp[x][y]
                lineUp[x][y] = "0"
                movingDownBlock(x: x+1, y: y)
            }
        }
        
    }
    
    while possible{
        findBlockIndex()
        removeBlock()
        rebuildingBlock()
    }

    return result
}