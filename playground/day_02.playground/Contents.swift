import UIKit

// 콜렉션 : 데이터를 모아둔 것
// Array, Sets, Dictionary, (Tuple)

var myArray : [Int] = [0,1,2,3,4,5,6,7]

// foreache
for item in myArray {
    print("item \(item)")
}

for item in myArray where item > 5 {
    print("item is larger then 5,  \(item)")

}

for item in myArray where item % 2 == 0 {
    print("item is even, \(item)")

}



