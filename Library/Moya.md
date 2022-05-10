# Moya가 모야..?

moya는 `Alamofire` 에서 한 번 더 추상화하였으며, 일반적으로 열거형을 사용하여 네트워크 요청을 `타입 안전`한 방식으로 캡슐화하는데 초점을 맞춘 네트워크 라이브러리이다!

<img width = "500"  src = "https://blog.kakaocdn.net/dn/bckeFe/btrajOCBdhS/89nTanc6dkJSlesiZHfOs0/img.png">

왼쪽의 그림처럼 Network Layer를 통해서 API를 관리하고,

자유로운 방식을 통해서 네트워킹을 구현한다면

Moya는 오른쪽 그림처럼 `깔끔한 레이어`를 가지며 자체적으로 네트워킹을 수행하지 않고 `Alamofire`를 통해서 수행합니다.


# Moya 설치
CocoaPods

```
pod 'Moya'

pod 'Moya/RxSwift'
```

# TargetType 구현

Moya는 `MoyaProvider<TargetType>`으로 request를 수행하기 때문에, 위에서 정의한 API가 `TargetType 프로토콜`을 구현해야합니다.

`extension`을 만들어 `TargetType 프로토콜을 채택`하면, 아래와 같은 `프로퍼티들을 구현` 해야합니다.

* baseURL: 서버의 도메인

* path: 서버의 도메인 뒤에 추가 될 Path (일반적으로 API)

* method: HTTP method (GET, POST, …)

* sampleData: 테스트용 Mock Data

* task: 리퀘스트에 사용되는 파라미터 설정

* validationType: 허용할 response의 타입

* headers: HTTP header

## Moya 사용법과 형태

```
import Moya

 enum GithubAPI {
     case searchUser(query: String)
 }
```

열거형으로 정의한 데이터 네트워크를 템플릿 형태로 만들어준다.

get, post형태를 잡아준다.

```
extension GithubAPI: TargetType {
     var baseURL: URL {
         return URL(string: "https://api.github.com")!
     }

     var path: String {
         switch self {
         case .searchUser:
             return "search/users"
         }
     }

 //moya의 장점 각 메소드가 get 인지 post인지 설정가능
     var method: Method {
         return .get
     }

     var sampleData: Data {
         return Data()
     }

     var task: Task {
         switch self {
         case .searchUser(let query):
             return .requestParameters(parameters: ["q" : query], encoding: URLEncoding.default)
         }
     }

     var validationType: Moya.ValidationType {
         return .successAndRedirectCodes
     }

     var headers: [String : String]? {
         return nil
     }
 }
```

## 사용법

```
let provider = MoyaProvider<GithubAPI>()
 provider.rx.request(.searchUser(query: query))
     .subscribe { [weak self] (event) in
         switch event {
         case .success(let response):
            print(response)
         case .error(let error):
             print(error.localizedDescription)
         }
     }
     .disposed(by: disposeBag)
```
