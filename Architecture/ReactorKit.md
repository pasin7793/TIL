# ReactorKit!

- RxSwift의 강점인 비동기 처리에 편리한 코드이다.

- 이전 페이지를 기록하는 `상태`컴포넌트가 따로 관리되게끔 설계된 구조이다.

- ReactorKit은 형식이 갖추어진 형태이다!

<img width = "500"  src = "https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FAyvwc%2FbtrmzidHgrQ%2FomtKNUs7Z4PMa6iYjEbkkK%2Fimg.png">

- `UI에 해당`하는 `View`와 `UI`에 반응하여 비즈니스 로직을 처리하는 `Reactor`로 구성

- Reactor에 `View`의 `Action`을 미리 정의해놓고, 해당 `action`을 처리하여 다시 `View`에 `State`값을 넘기는 것

- View에서는 인터렉터 이벤트들을 Reactor의 `Action`값으로 넘기고, reactor의 `state값을 구독`하고 `UI업데이트` 하는 것

# View

UI가 있고, UI들의 action을 reactor에 넘기고, reactor의 state를 구독하고 있는 형태

- bindAction(_:): View에서 Reactor로 이벤트 방출

- bindState(_:): Reactor에서 바뀐 state들을 View에서 구독

# Reactor

### Action

- View로부터 받을 Action을 enum으로 정의

### Mutation 

- View로부터 action을 받은 경우, 해야할 작업단위들을 enum으로 정의

### State 

- 현재 상태를 기록하고 있으며, View에서 해당 정보를 사용하여 UI업데이트 및 Reactor에서 image를 얻어올때 page정보들을 저장

# CocoaPods
```
pod 'ReactorKit'

pod 'RxCocoa'
```