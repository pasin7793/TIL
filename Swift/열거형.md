# Enum
> 열거형이란 그룹에 대한 연관된 값을 정의하고 사용하는 것이 가능한 타입을 말한다.
> 
>원시값(rawValue)이라는 형태로 실제값을 부여할 수 있다. 

## 사용법
```
enum 열거형 이름(대문자로 시작) {
    case 열거 항목1
    case 열거 항목2
    case 열거 항목3
}
```

## 열거법의 Switch문 사용
* 다음과 같이 열거형을 switch문을 활용해 사용할수 있다.
* 많은 경우, 열거형은 switch문과 함께 사용된다.

```
switch directionToHead {
case .north:
    print("Lots of planets have a north")
case .south:
    print("Watch out for penguins")
case .east:
    print("Where the sun rises")
case .west:
    print("Where the skies are blue")
}
```
## 열거형의 원시값(Raw Values)
* 다음과 같이 열거형에 원시값을 지정해줄수도 있다.
```
enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}
    
//Index 1씩 증가
enum Planet: Int {
    case mercury=1, venus, earth, mars, jupiter, saturn, uranus, neptune
}
    
//String은 기본 항목이 String으로 지정
enum CompassPoint: String {
    case north, south, east, west
}
```
