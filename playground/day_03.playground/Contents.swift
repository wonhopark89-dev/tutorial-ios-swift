import UIKit

    enum School {
    case elementary
    case middle
    case high
}

// 한줄로도 가능
enum School2 {
    case a, b, c
}

// var : 값을 변경 할 수 있음
// let : 상수


let yourSchool = School.elementary
print("yourSchool: \(yourSchool)")


enum Grade: Int {
    case first = 1;
    case second = 2;
}

let yourGrade = Grade.second
print("yourGrade: ", yourGrade)
print("yourGrade: ", yourGrade.rawValue)


enum SchoolDetail {
    case elementary(name: String)
    case middle(name: String)
    case hide(name: String)
    
    func getName() -> String {
        switch self {
        case .elementary(let name):
            return name
        case let .middle(name):
            return name
        case let .hide(name):
            return name
        }
    }
}

let yourMiddleSchoolName = SchoolDetail.middle(name: "가나다중학교")
print("yourMiddleSchoolName \(yourMiddleSchoolName)")
print("yourMiddleSchoolName get \(yourMiddleSchoolName.getName())")
