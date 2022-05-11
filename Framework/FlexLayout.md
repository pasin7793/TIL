# FlexLayout 이란?

간결하고 직관적이면서 연결 가능한 구문을 제공하는 고도로 최적하된 뷰 구현 방식의 레이아웃이다.


FlexLayout 은 Texture 와 동일하게 Yoga 를 기반으로 만들어졌다.

## FlexLayout의 성능

<img width = "400"  src = "https://miro.medium.com/max/1400/0*8n8mf6lXCeAk2G-V.png">

FlexLayout은 UIKit에서 제공해주는 UIStackView보다 성능이 훨씬 좋다.

수치를 보면 거의 8~12배가 더 빠르다!!

# FlexLayout사용

FlexLayout의 사용법은 두가지로 나뉜다.
## 1. 컨테이너 설정

flexbox가 담길 Container를 생성하고 flexbox 구조를 초기화 한다

## 2. 컨테이너 레이아웃 설정

컨테이너를 만들고 뷰에 올렸으면 이 컨테이너와 담긴 Flexbox들의 레이아웃을 잡아줘야한다.

## 사용법
### CocoaPods
```
pod 'FlexLayout'
```

