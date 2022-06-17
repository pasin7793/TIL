# Realm 이란?

로컬에 데이터를 저장할 수 있는 라이브러리이다

## 사용(Model)

```
import Foundation
import RealmSwift

class Person: Object {
    @objc dynamic var id:Int = 0
    @objc dynamic var age:Int = 0
    @objc dynamic var name:String = ""
    
    // id 가 고유 값입니다.
    override static func primaryKey() -> String? {
      return "id"
    }
}
```

id 를 프라이머리 키로 지정했다.

primaryKey 가 뭐냐면

나이가 20살인 사람은 여러명이 될 수 있지만

id 가 1인 사람은 여러명이 될 수 없다고 생각하면 된다.

### 사용(ViewController)

```
let realm = try! Realm()
```
realm을 가져왔다

```
let person1 = Person()
person1.name = "임준화"
person1.age = 18
person1.id = 1
```
저장할 객체를 만들었다

```
try! realm.write {
	realm.add(person1)
	realm.add(person2)
}
```
이렇게 write 메소드를 사용하여 값을 저장한다.
