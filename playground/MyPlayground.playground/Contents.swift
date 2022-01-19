import UIKit

// 구조체
// 구조체 인스턴스 = 값타임
// 클래스 인스턴스 = 참조타입

// 구조체, struct, 프로퍼티, 메서드, 대부분 파스칼 표기법
struct User {
    var nickname: String
    var age: Int
    
    func information() {
        print("\(nickname) \(age)");
    }
}

// 인스턴스 생성 => 메모리에 생성
// 구조체 기본 생성자 자동생성
var user1 = User(nickname: "Pengsoo", age: 23)
user1.nickname
user1.nickname = "뽀로로" // 이름 변경
user1.nickname

user1.information();



// 옵셔널
var name1: String?
var name2: String = "Gunter";


// 옵셔널 해제 방법
// - (1)명시적 해제
// - 강제 해재, 비강제해재(옵셔널 바인딩)

var oNumber: Int? = 3;
print(oNumber)
print(oNumber!) // 강제해제 ( 권장하지는 않음 )

if let result = oNumber {
    // 이렇게 해제할 경우 해제한 값은 if 문 안에서만 사용 가능
    print(result)
} else {
    //
    // print(result) // error 발생
}

func oTest() {
    let oNumber2: Int? = 5
    guard let result = oNumber2 else { return }
    // 함수 전체에서 추출된 결과값(result) 사용가능
    print(result)
}

// guard 를 통해서 옵셔널 해제 시 밖에서도 사용가능
oTest()


// - (2)묵시적 해제
// - 컴파일러에 의한 자동 해제, 옵셔널의 묵시적 해제
let oNumber3: Int? = 66;
if oNumber3 == 66 {
    print("oNumber3 가 66 입니다")
} else {
    print("oNumber3 이 66 이 아닙니다.")
}

let oString1 = "12"
var stringToInt: Int! = Int(oString1);
print(stringToInt + 1);



/*
 for - in
 while
 repeat - while
 */
var no2 = 6

repeat {
    no2 += 2
} while no2 < 5
            
print(no2) // 조건에 맞지 않아도 repeat 은 최소 1번 실행하기 때문에 while 조건에 해당하지 않더라도 값은 증가함


/*
 while 조건식 {
 // 실행할 구문
 // 조건식 리턴값이 Bool 이여야함
 }
 */
var no1 = 5

while no1 < 10 {
    no1 += 1;
    print(no1)
}


/*
 for 루프상수 in 순회대상 {
 // 실행 구문
 }
 */
let array = [1,2,3,4,5]
for k in array {
    print(k)
}

for i in 1...4 {
    print(i)
}


/*
 조건문
 if, switch, guard
 */

let temperature = 30;

// 범위
switch temperature {
    case -20...9:
        print("겨울 입니다.")
    case 10...14:
        print("가을 입니다.")
    case 15...25:
        print("봄 입니다")
    case 26...35:
        print("여름 입니다")
    default:
        print("이상 기후 입니다.")
}

let color = "blue"
// 값
switch color {
    case "blue":
        print("파란색 입니다.")
    case "green":
        print("초록색 입니다")
    case "yellow":
        print("노란색 입니다")
    default:
        print("찾는 색상이 없습니다.")
}

let animal = "cat"

if animal == "cat" {
    print("고양이 사료주기")
} else if animal == "dog" {
    print("강아지 사료주기")
} else {
    print("해당하는 동물이 없습니다.")
}


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



