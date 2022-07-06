//
//  ParameterApp.swift
//  Parameter
//
//  Created by MacBook Air on 2022/07/04.
//

// <기본 파라미터 값>
// 함수의 파라미터 값에 기본값을 설정할 수 있다. 기본 값이 설정되어 있는 파라미터는 함수 호출 시 생략할 수 있으며 기본 값을 사용하지
// 않는 파라미터를 앞에 위치시켜야 함수를 의미있게 사용하기 쉽다.

func someFunction(parameterWithoutDefault: Int, parameterWithDefault : Int = 12) {
// 함수 호출시 두번째 인자를 생략하면 함수 안에서
// parameterWithDefault값은 12가 기본 값으로 사용된다.
}
someFunction(parameterWithoutDefault: 7, parameterWithDefault: 6)
someFunction(parameterWithoutDefault: 4)

// <집합 파라미터>
// 인자 값으로 특정 형(type)의 집합 값을 사용할 수 있다.
@discardableResult
func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

arithmeticMean(1, 2, 3, 4, 5) // 모르는 점 : Result of call to 'arithmeticMean' is unused의 해결법
// returns 3.0, which is the arithmetic mean of these five numbers
arithmeticMean(3, 8.23, 18.9) // 모르는 점 : Result of call to 'arithmeticMean' is unused의 해결법

// <인 아웃 파라미터>

// 인자 값을 직접 변경하는 파라미터이다. 선언을 위해 파라미터 앞에 inout이라는 키워드를 사용한다. 아래는 인자 두 값을 변경하는 함수이다.

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}
// 아래는 실제 사용하는 예시이다. 함수의 인자에 변수를 넣을때 & 키워드를 넣었다.

var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")

// 두 변수의 실제 값이 변경되었다.

var ace = 14
var card = 290
swapTwoInts(&ace, &card)
print("\(ace)", "\(card)")

// 인-아웃 파라미터는 기본 값을 가질 수가 없고, 집합 파라미터는 inout으로 선언될 수 없다. 인-아웃 파라미터를 사용하는 것은 함수의 반환
// 값을 사용하지 않고 함수 scope밖에 영향을 줄 수 있는 또 하나의 방법이다.



