# MVC 패턴

- MVC = Model + View + Controller
![image](https://user-images.githubusercontent.com/76590302/145926617-513bfa0a-9d31-43c5-ba23-2084018683eb.png)
- `Controller` 는 가운데에서 `Model`과 `View` 모두를 업데이트 시킬 수 있습니다. `View` 는 데이터들을 화면에 보여주는 역할만 하고, `Model`은 앱의 상태 지속을 위해 데이터를 읽고 씁니다.
-  MVC 패턴은 `View`와 `Controller`가 강하게 연결되어 있어 `ViewController` 가 너무 많은 일을 합니다.

>Controller는 모델과 뷰를 업데이트할 수 있는 중심역할을 한다.
>
>View는 데이터를 화면에 표현해주는 역할을 한다.
>
>Model은 데이터를 Read/Write하며 저장하는 역할을 한다.

### 문제점
* 앱의 규모가 커질수록 많은 클래스들이 뷰도 모델도 아닌 상황이 발생한다. 자연스레 컨트롤러에 코드를 쑤셔넣는다.

* 그래서 MVC 가 Massive View Controller 라고 농담도 있다.
