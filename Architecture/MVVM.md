# MVVM 패턴

MVVM 패턴의 목표는 비즈니스 로직과 프레젠테이션 로직을 UI로부터 분리하는 것입니다. 비즈니스

로직과 프레젠테이션 로직을 UI로부터 분리하게 되면, 테스트, 유지 보수, 재사용이 쉬워집니다.

## 'M'VVM의 Model

MVVM 아키텍쳐에서 Model은 데이터 구조를 정의하고 ViewModel에게 결과를 알려준다.

여기서의 Model은 View와 이어지지 않는다.

## M'V'VM의 View

view는 사용자와의 상호작용을 통해 이벤트가 일어나면 ViewModel에게 알려주며,

ViewModel이 업데이트 요청한 데이터를 보여준다.

## MV'VM'의 ViewModel

ViewModel은 사용자의 상호작용을 view가 보내주면 그에 맞는 이벤트를 처리하고,

Model의 Read Update Delete를 담당한다.

<img width = "500"  src = "https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FOwzzZ%2FbtqARwRQICN%2FcVfDt48KVNpEZEASIjoMq0%2Fimg.png">

ViewModel은 기존의 UIKit을 import 할 필요도 없이 데이터 update 및 뷰 요소를 업데이트 한다.

Model은 데이터 구조를 갖고 있다. 



