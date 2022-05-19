# Swinject

Swift용 `경량 종속성 주입` 프레임워크입니다.

`의존성 주입` 라고 하는 개념이다.

단지 클래스간의 `의존관계`를 좀 더 `유연`하게 해주는 것이 목표라고 하네요


## Swinject 구현

1. 앱의 설정을 관리해주는 `AppDelegate 파일`에서 `의존성 주입`을 시켜주기
```
import Swinject
```

2. 의존성을 위한 `서비스를 등록`하고 가져와서 사용한다!
```
let container = Container()
container.register(Animal.self) { _ in Dog(name: "MOMO") }
container.register(Person.self) { r in
    PetOwner(pet: r.resolve(Animal.self)!)
}
```

3. 마지막으로 앱의 `디버깅 모드`일때에는 `stub restaurant lister`를 실행하게 한다

```
var restaurantLister:RestaurantLister = ServerRestaurantLister.shared // 이 코드를
let restaurantLister:RestaurantLister // 이렇게 변경
```

이제 생성자에서 restaurantLister 매개변수를 전달 받아서 restaurantLister에 주입해주는 코드를 추가해줍니다

```
init(restaurantLister: RestaurantLister) {

    self.restaurantLister = restaurantLister

    super.init(nibName: nil, bundle: nil)
}
required init ? (coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
}
```