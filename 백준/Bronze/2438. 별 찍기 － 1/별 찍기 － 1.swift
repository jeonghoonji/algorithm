import Foundation

var input = readLine()

if let input = input{
    let inputs = input.components(separatedBy: " ")
    //입력 받은 값을 상수로 지정
    let a : Int = Int(inputs[0])!
    //받아온 값만큼 for-in문 반복
    for i in 1...a{
        // 출력할 빈 문자열 변수 만들기
        var star :String = ""
        //반복 횟수를 위에 있는 for-in문의 i만큼 반복해서
        //단계별로 증가
        for _ in 1...i{
            // start이라는 문자열에 * 더해주기
            star += "*"
        }
        // 저장한 star문자열 출력
        print(star)
    }
}