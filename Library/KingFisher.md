# KingFisher <img width = "100"  src = "https://raw.githubusercontent.com/onevcat/Kingfisher/master/images/logo.png">

URL 주소를 가지고 있는 이미지를 앱 내에서 보여지게 해주는 라이브러리이다.

## 사용법

```swift
import KingFisher
```
우선 import 해주고
```swift
let url = URL(string: "//아무사진 url")

imageView.kf.setImage(with: url) //KingFisher사용
```

되게 간단하다..

## 왜 사용할까?

용량이 큰 사진을 다뤄야 하는 경우 앱 성능에 심각한 영향을 줄 수 있기 때문에 효율적으로 일을 처리해야하고 네트워킹 작업이 필요한 부분은 비동기 처리를 해줘야 한다.

[KingFisher](https://github.com/onevcat/Kingfisher)

