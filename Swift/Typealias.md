#Typealias란?

typealias란 타입에 붙을 수 있는 별칭, 약칭이다.

## 선언

```
typealias (사용할 별명) = (존재하는 타입)
```

- typealias는 새로운 타입을 만드는게 아니다. 기존 유형을 새로운 이름으로 부를 수 있게 만든것이다.

### 언제 사용할 수 있을까?

* 1. Built-in type(String, Int)
String, Int, Float 등의 모든 내장 데이터 유형에 대해 typealias로 사용할 수 있다.

```
typealias MyName = String
```
위의 선언을 통해 MyName을 String 대신 모든 곳에서 사용할 수 있다.

```
var name: MyName = "junhwa"
var name2: String = "junhwa"
```
name, name2는 같은 String 타입이다.