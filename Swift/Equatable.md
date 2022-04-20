# Equatable 이란?

## 공식문서

```
A type that can be compared for value equality

값이 동일한 지 어떤지를 비교 할 수있는 타입
```

## 요악

* Equatable 프로토콜을 따르는 클래스나 구조체는 ==, =! 같은 비교를 할수 있다.

* Swift표준 라이브러리 대부분의 기본 유형은 해당 프로토콜을 가지고있습니다.

* Equatable 사용시에는 == 을 무조건 정의 해주어야 한다.


### 함수사용

```
extension StreetAddress: Equatable { 
    static func == (lhs: StreetAddress, rhs: StreetAddress) -> Bool { return 
    lhs.number == rhs.number && 
    lhs.street == rhs.street && 
    lhs.unit == rhs.unit 
    } 
}
```
