import UIKit


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



