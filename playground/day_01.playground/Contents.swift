import UIKit

var isDarkMode : Bool = true

if (isDarkMode == true) {
    print("다크모드 입니다.")
}

if (isDarkMode != true) {
    print("다크모드 아닙니다.")
}

if isDarkMode == true {
    print("다크모드 입니다.")
}

if isDarkMode {
    print("다크모드 입니다.")
}

if !isDarkMode {
    print("다크모드 아닙니다.")
}


// var title: String = isDarkMode == true ? "다크모드" : "라이트모드"
var title: String = isDarkMode ? "다크모드" : "라이트모드"


print("title : \(title)")
