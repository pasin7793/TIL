# PinLayout이란?

Auto layout 없이 Swift View 레이아웃을 구성할 수 있도록 도와주는 프레임워크이다. 

Auto layout을 사용하지 않고 수동으로 view를 layout한다.

## PinLayout의 성능

<img width = "500"  src = "https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2F4H5IM%2Fbtq285LkDBy%2FGoweoO01qmabIqeBGzE7R0%2Fimg.png">

PinLayout은 manual layouting(수동 레이아웃)보다 빠르거나 같으며 Auto layout보다 8~12배 빠르다!!

# PinLayout 사용

## 1. addSubView 하기
기본적으로 addSubview까지는 해야한다.

## 2. Layout 설정
SnapKit이 snp 이였다면 PinLayout은 pin인 느낌?
ex)
```
label.pin.top(10).bottom(10).left(10).right(10) 
//or 
label.pin.all(10)
```

## 사용법
### CocoaPods
```
pod PinLayout
```
## 공식문서 및 메소드
[PinLayout 깃허브](https://github.com/layoutBox/PinLayout)