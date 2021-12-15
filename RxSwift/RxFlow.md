# RxFlow

RxFlow는 `Coordination Pattern`기반의 navigation framework 이다.

`Coordinator`를 Reactive하게 사용할 수 있는 프레임워크이다.

### RxFlow의 용어

* `Flow`: `Flow`는 어플리케이션의 네비게이션 공간을 규정한다. 이 공간에서는 우리가 네비게이션 액션들을 선언할 수 있다.
* `Step`: `Step`은 어플리케이션의 네비게이션 상태이다. `Flow`와 `Step`을 조합하면 가능한 모든 네비게이션 액션을 설명할 수 있다. 
* `Stepper`: `Step`을 발생시킨다면 무엇이든 될 수 있다. `Stepper`는 `Flow`의 모든 네비게이션 액션을 트리거해야 한다.
* `Presentable`: 보일 수 있는 무언가를 추상화한 것이다.
* `Flowable`: `Presentable`과 `Stepper`를 조합하는 간단한 데이터 구조이다. `Flowable`은 우리의 Reactive 매커니즘의 새로운 `Step`이 생성할 게 무엇인지 `Coordinator`에게 알려준다.
* `Coordinator`: 네비게이션 가능성을 표현하는 `Flow`와 `Step`의 적절한 조합을 정의했다면 `Coordinator`가 해야 할 일은 이 조합을 지속해서 잘 섞는 것입니다.

### RxFlow의 장점

* `UIViewController`의 재사용성을 키운다.
* 네비게이션의 `흐름`에 맞게 `UIViewController`를 다른 방식으로 보여줄 수 있다.
* `의존성 주입`을 쉽게 구현 할 수 있다.
* `UIViewController`에 있는 모든 네비게이션 매커니즘을 삭제한다.
* `반응형 프로그래밍`(Reactive Programming) 사용을 촉진한다.
* 네비게이션에서 일어나는 대부분의 케이스를 처리하면서 선언형으로 표현할 수 있다.
* 어플리케이션을 네비게이션의 논리적인 블록으로 나눌 수 있다.
