import UIKit

// 옵셔널이란 ?
// 값이 있는지 없는지 모른다.

var someVariable:Int? = nil

// Optional(10) 으로 감싸져있음
if someVariable == nil {
    someVariable = 10
}
print("someVariable: ", someVariable)
// 출력 : Optional(10)

// 언랩핑이란 ? 감싸져있는 것을 벗기는 것
if let otherVariable = someVariable {
    // somVariable 이 값이 있으면 otherVarible 에 넣겠다
    print("언랩핑 되었음. 값이 있음 otherVariable", otherVariable)
    // 출력 : 10
} else {
    print("값이 없다.")
}

someVariable = nil
// 값이 없으면 기본값으로 우측값을 할당하겠다
let myValue = someVariable ?? 20
print("myValue", myValue)


//----
var firstValue : Int? = 30
var secondValue : Int? = 50

print("firstValue", firstValue)
print("secondValue", secondValue)

unwrap(parameter: firstValue)
unwrap2(secondValue)

func unwrap(parameter: Int?) {
    print("unwrap() called")
    // 값이 없으면 리턴, 지나가버림
    guard let unWrappedParam = parameter else { return }
    
    print("unWrappedParam: ", unWrappedParam)
}

// call 할때 paramter 표기를 안하고 싶으면 언더바 사용
func unwrap2(_ parameter: Int?) {
    print("unwrap2() called")
    // 값이 없으면 리턴, 지나가버림
    guard let unWrappedParam = parameter else { return }
    
    print("unWrappedParam: ", unWrappedParam)
}
