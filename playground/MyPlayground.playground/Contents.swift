import UIKit


/*
 스위프트는 함수형 프로그래밍 패러다임을 포함하는 언어이다
 스위프트의 함수는 일급 객체이다. 함수를 변수, 상수에 할당 할 수 있다.
 함수는 매개변수를 통해서도 전달할 수 있다.
 */

/*
 함수마다 가변 매게변수는 1개 밖에 가지지 못함
 0개 이상의 개수를 배열로 취급함
 */
func sendMessage2(me: String, friends: String...) -> String {
    return "I`m \(me), my friend: \(friends)"
}
sendMessage2(me: "펭수", friends: "거북이", "사자","고양이")
sendMessage2(me: "펭수")

/*
 func 함수 이름(전달인자 레이블: 매개변수 이름: 매개변수 타입, ... ) -> 반환 타입 {
    return 반환 값
 }
 */
func sendMessage(from myName:String, to name:String, etc added:String = "없음") -> String {
    return "Hello \(name)!, I`M \(myName), wanna talk about \(added)"
}

sendMessage(from: "뽀로로", to: "루피")
sendMessage(from: "뽀로로", to: "루피", etc: "크롱")

// 기본값 설정
func greeting(friend: String, me:String = "ABCD") {
    print("Hello, \(friend)!, I`m \(me)")
}

greeting(friend: "철수")
greeting(friend: "도라에몽", me: "진구")

/*
 func 함수명(파라미터 이름: 데이터 타입) -> 반환 타입 {
    return 반환 값
 }
 */

func printName() -> Void {
    
}

// 리턴타입없을 때 생략가능
func printName2() {}


func sum(a:Int, b:Int) -> Int {
    return a+b;
}

sum(a:5, b:10);


// 컬렉션 ( Array, Dictionary, Set )
// - 데이터들의 집합 묶음

// Array
// - 데이터 타입을 순서대로 저장하는 리스트

// Dictionary
// - 순서없이 키(key) 와 값(value) 한쌍으로 데이터를 저장하는 컬렉션 타입

// Set
// - 같은 데이터 타입의 값을 순서없이, 중복허용하지 않고 저장하는 리스트

var set: Set = Set<Int>(); // 선언방법 ( 별도의 축약 없음 )
set.insert(10);
set.insert(20);
set.insert(30);
set.insert(20);
set.insert(30);
set

set.remove(20); // 값으로 삭제
set


// var dic: Dictionary<String, Int> = Dictionary<String, Int>(); // 선언방법(1)
// var dic: [String: Int] = [:] // 선언방법(2)
var dic: [String: Int] = ["도라에몽": 0] // 선언방법(3) with 초기값

dic["홍길동"] = 1;
dic["철수"] = 22;
dic["영희"] = 33;
dic

dic["철수"] = 44;
dic

dic.removeValue(forKey: "영희") // 키로 삭제
dic




// var numbers: Array<Int> = Array<Int>(); // 선언 방법 (1)
// var numbers = [Int](); // 선언 방법(2)
var numbers: [Int] = []; // 선언 방법(3)

numbers.append(1);
numbers.append(2);
numbers.append(3);

numbers[0];
numbers[1];

numbers.insert(4, at: 2);
numbers

numbers.remove(at: 0);
numbers




var greeting = "Hello, playground"

// let => 상수 선언
// var => 변수 선언


// Int: 64bit 정수형
// UInt : 부호가 없는 64bit 정수형
// Float : 32bit 부동 소수점
// Double : 64bit 부동 소수점
// Bool : true, false
// Character : 문자
// String : 문자열
// Any : 모든 타입을 지칭하는 키워드


var someInt: Int = -100;

var someUInt: UInt = 200;
// var someUInt2: UInt = -1; // error

var someFloat: Float = 1.1;
someFloat = 1;

var someDouble: Double = 1.2;
someDouble = 1;

var someBool:Bool = true;
someBool = false;

var someCharacter:Character = "가";
// someCharacter = "가나다"; // error

var someString:String = "하이하이";

// 타입추론
var number = 10;



