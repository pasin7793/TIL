# Dependency injection(의존성 주입)

프레임워크에 의해 객체의 의존성이 주입되는 설계 패턴이다.

클래스간의 의존관계를 설정해주는 일을 한다.

## DI패턴의 장점
1. 재사용성을 높여준다.
2. 코드를 단순화 시킨다.
3. 코드의 흐름을 알기 쉽다.

## 의존성?

```
class AClass{
  var num: Int = 1
}

class BClass{
  var internalVariable = AClass()
}
```
A 클래스를 내부에 변수로 사용하게 됨으로써

B 클래스는 A 클래스에 의존관계가 생기게 된다.
