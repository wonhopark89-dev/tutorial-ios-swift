import UIKit
import Darwin

class SomeClass0123 {
    var count: Int = 0
}

var class0123_1 = SomeClass0123()
var class0123_2 = class0123_1
var class0123_3 = class0123_2

class0123_3.count = 2
class0123_1.count // 2 로 변경된 것을 알 수 있다

struct SomeStruct0123 {
    var count: Int = 0
}

var struct0123_1 = SomeStruct0123()
var struct0123_2 = struct0123_1
var struct0123_3 = struct0123_2

struct0123_2.count = 2
struct0123_3.count = 3

struct0123_1.count // 바뀌지 않은 것을 확인할 수 있다
struct0123_2.count
struct0123_3.count // 매번 새로운 메모리에 할당하기 때문에 다른 변수에 영향이 없음

// 클래스와 구조체의 차이점
// 클래스
// - 참조 타입
// - ARC 로 메모리를 관리 ( 메모리 스택영역 포인터, 인스턴스의 메모리 주소만 할당되며, 실제 데이터는 힙 영역에 값이 할당 )
// - 상속이 가능
// - 타입 캐스팅을 통해 런타임에서 클래스 인스턴스의 타입을 확인할 수 있음
// - deinit 을 사용하여 클래스 인스턴스의 메모리 할당을 해제할 수 있음
// - 같은 클래스 인스턴스를 여러 개의 변수에 할당한 뒤 값을 변경 시키면 모든 변수에 영향을 줌 ( 메모리가 복사됨 )

// 구조체
// - 값 타입
// 구조체 변수를 새로운 변수에 할당할 때 마다 새로운 구조체가 할당됩니다.
// 즉 같은 구조체를 여러개의 변수에 할당한 뒤 값을 변경시키더라도 다른 변수에 영향을 주지 않음 ( 값 자체를 복사 )


// 클래스와 구조체의 공통점
// - 값을 저장할 프로퍼티를 선언할 수 있습니다.
// - 함수적 기능을 하는 메서드를 선언 할 수 있습니다.
// - 내부 값에 .을 사용하여 접근할 수 있습니다.
// - 생성자를 사용해 초기 상태를 설정할 수 있습니다.
// - extension 을 사용하여 기능을 확장할 수 있습니다.
// - Protocal 을 채택하여 기능을 설정 할 수 있습니다.



// -----------------------
// 타입 프로퍼티, static 키워드
struct SomeStructure0120 {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 1
    }
}

SomeStructure0120.storedTypeProperty
SomeStructure0120.computedTypeProperty
SomeStructure0120.storedTypeProperty = "hello"
SomeStructure0120.storedTypeProperty

// ---------------------
// property observer, 프로퍼티가 set 될때마다 호출됨
// property observer 는 3가지 경우에만 사용가능, 저장 프로퍼티, 오버라이딩된 저장 계산 프로퍼티
class Account0120 {
    var credit: Int = 0 {
        // 소괄호 이름 지정 ( 기본값 newValue, oldValue )
        willSet {
            // 값이 저장되기 직전에 호출
             print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정")
        }
        didSet {
            // 값이 저정된 후에 호출
            print("잔액이 \(oldValue)원에서 \(credit)원으로 변경되어있습니다.")
        }
    }
}
var account = Account0120();
account.credit = 1000;


// ----------------------
// 계산(연산형) 프로퍼티, 클래스, 구조체, 열거형
// get, set
// get 만 사용하면 읽기전용이 된다
// set 에 변수를 지정하지 않으면 기본 변수명은 newValue
struct Stock0120 {
    var averagePrice: Int
    var quantity: Int
    var purchasePrice: Int {
        get {
            return averagePrice * quantity
        }
        // 변수명 지정안하면 newValue 가 기본 변수명
        set (newPrice) {
            averagePrice = newPrice / quantity
        }
    }
}
var stock0120 = Stock0120(averagePrice: 1500, quantity:3)
print(stock0120)
stock0120.purchasePrice
stock0120.purchasePrice = 3000
stock0120.averagePrice

// ------------------------------
// 프로퍼티 (Properties) 란 ?
// - 클래스, 구조체 또는 열거형 등에 관련된 값을 뜻한다.
// 저장 프로퍼티, 연산 프로퍼티, 타입 프로퍼티
// 저장
struct Dog0120 {
    // 저장 프로퍼티
    var name: String
    let gender: String
}
var dog0120 = Dog0120(name:"ABC", gender:"Male")
print(dog0120)

dog0120.name = "EDF"
dog0120.name
// dog0120.gender = "femail" // 에러 발생 let 상수여서

let dog0120_1 = Dog0120(name: "ZZZ", gender: "Male")
// dog0120_1.name = "ZXC" // 에러, 인스턴수가 상수여서

// 클래스는 상수로 선언해도 변수로 선언한 값을 바꿀수 있다
class Cat0120 {
    var name: String
    let gender: String
    
    init(name: String, gender: String) {
        self.name = name
        self.gender = gender
    }
}

let cat0120 = Cat0120(name: "kiki", gender: "female")
cat0120.name = "koko"
print(cat0120.name)
//--------------------------
// 초기화 (initialization)
// 클래스 구조체 또는 열거형의 인스턴스를 사용하기 위한 준비 과정
// 클래스
// 커스텀 init 함수 선언 가능
// 클래스에서는 deinit 사용가능 ( 더이상 해당 인스턴스가 사용이 필요없어 질때 호출됨 )
class Dog1 {
    var nickname: String
    var age: Int
    
    // 기본
    init(nickname: String, age: Int) {
        self.nickname = nickname
        self.age = age
    }
    
    init(age:Int) {
        self.nickname = "booboo"
        self.age = age
    }

    deinit {
        print("deinit user ~~~~ ")
    }
}

var dog1 = Dog1(nickname: "yoyo", age: 2)
dog1.nickname
dog1.age

var dog2 = Dog1(age:4)
dog2.nickname
dog2.age

var dog3: Dog1? = Dog1(nickname: "hihi", age: 8)
dog3 = nil // 강제로 ni 넣어서 deinit 확인


// 클래스
class Dog1 {
    var name: String = ""
    var age: Int = 0
        
    init() {
        // 인스턴스가 생성되면 호출
        // 초기화 구문
    }
    
    func introduce() {
        print("name \(name) age \(age)")
    }
}

var dog = Dog1()
dog.name
dog.name = "Coco"
dog.name
dog.age = 3
dog.age
dog.introduce()

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



