# Rxcocoa

RxCocoa란 기존 Cocoa Framework에 Rx기능을 합친 RxSwift기반의 라이브러리다.

RxSwift와 별도로 추가해주어야 사용할 수 있다.
![image](https://user-images.githubusercontent.com/76590302/146159460-acd60992-3bf7-453d-8426-3d0d705bd00f.png)
RxCocoa는 단방향성을 갖고 있다.

Producer는 값을 생성하고, Consumer는 값을 처리한다.
## 중요 용어
- ObserverType: 값을 주입시킬 수 있는 타입
- ObservableType: 값을 관찰할 수 있는 타입

## ControlProperty

Subject 같이 프로퍼티에 새 값을 주입시킬 수 있고(ObserverType) 값의 변화도 관찰할 수 있는 타입(ObservableType).
ControlProperty는 ControlPropertyType을 준수하고, 

ControlPropertyType은 ObservableType과 ObserverType을 준수한다.

## Binder

ObserverType을 따름. 값을 주입시킬 수는 있지만, 값을 관찰할 수는 없음.

Error를 받을 수 없으며 Error를 받으면 fatalError를 발생시킴

예를 들면 Button의 text는 subscribe할 수 없지만 bind 할 수 있다.
