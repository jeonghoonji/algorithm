import Foundation

//readLine()은 문자열을 반환하는 함수, 입력 한줄만 input으로 받음, 옵셔널 스트링으로 반환하여 옵셔널 바인딩 해야함!
var input = readLine()

if let input = input {
    //components 반환형은 배열 [String], import Foundation가 있어야함
    //separatedBy -> 인자 값으로 문자를 받음, 문자 기준으로 나눠 결과값 반환
    let inputs = input.components(separatedBy: " ")
    //아래 Int형으로 변환전에는 String뜨는데 변환후 옵셔널값?
//    print(type(of: inputs[0]))
    let a = Int(inputs[0])!
    let b = Int(inputs[1])!
    print(a + b)
}
