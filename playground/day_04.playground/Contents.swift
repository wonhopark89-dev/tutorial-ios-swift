import UIKit

// 레인지
// 0...5
// 0,1,2,3,4,5

// 0..<5
// 0,1,2,3,4

for index in 0...5 {
    print("\(index)")
}

for i in 0..<5 where i % 2 == 0 {
    print("짝수 \(i)")
}

var randomInts: [Int] = []
// var randomInts: [Int] = [Int]()
// 사용하지 않으면 _ 언더바로 쓰면 된다

for _ in 0..<25 {
    let randomNumber = Int.random(in: 0...100)
    randomInts.append(randomNumber)
}

print("randomInts \(randomInts)")
