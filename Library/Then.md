# Then

깔끔하다! 빠르다! 직관적이다!

## 예제 
간단하게 label 하나를 선언하겠다
```swift
let label: UILabel = {

  let label = UILabel()
  
  label.textColor = .black
  
  label.text = "Hello, World!"
  
  return label
  
}()
```
이코드를 Then 라이브러리를 사용한다면?
```swift
let label = UILabel().then {

  $0.textColor = .black
  
  $0.text = "Hello, World!"
  
}
```
 <img width = "80"  src = "https://opgg-com-image.akamaized.net/attach/images/20210714125453.1371588.jpg">
 <br>
 쉽다!