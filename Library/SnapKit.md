# SnapKit

짧은 코드로 autoLayout을 표현할 수 있도록 도와주는 프레임워크이다!

## 사용법

```
import SnapKit
```
view를 구성할 구성요소들을 선언해주겠다

```
let nameLabel = UILabel()
```
그다음 view에 추가해주는 코드를 짜겠다잇
```
view.addSubView(nameLabel)
```
<br>
이렇게 view에 추가해주고 layout을 SnapKit을 활용해보겠다

```
nameLabel.snp.makeConstraints { make in
    make.center.equalToSuperView() // view의 정중앙에 배치
}
```

[SnapKit 깃허브](https://github.com/SnapKit/SnapKit)

위에 선언한 center 뿐만 아니라 left,right,top,bottom도 있다 