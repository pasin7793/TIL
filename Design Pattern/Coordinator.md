# Coordinator 패턴

### Coordinator의 시작

화면 전환을 담당하는 컨트롤러인 UINavigationController가 있다.
![image](https://user-images.githubusercontent.com/76590302/146154941-79337d7b-6ba1-40a4-bf7f-a92473e926cf.png)

Stack 방식으로 새로운 화면을 push하고, 이전화면으로 돌아가가기 위해 pop한다.
```
let vc = HomeViewContrller()
navigationController?.pushViewController(vc, animated: true)
```
하지만 단점이 존재한다. 
앱이 점차 커지고 화면이 많아진다면 사용하기가 버거워 진다는 것이다.

### Coordinator 패턴이란?

view controller로 부터 화면 전환의 부담을 줄여주고, 화면전환을 보다 더 관리하기 쉽도록 도와주기 위한 패턴이다.
![image](https://user-images.githubusercontent.com/76590302/146154997-52526acc-5b9a-412f-9ba1-7ce8a6daf3db.png)

다음에 어떤 컨트롤러가 오는지 알 필요가 없다. 대신에 이러한 flow는 coordinator가 관리한다.

오르지 coordinator만이 이것을 알고 관리한다.

### Coordinator 구현

1. Coordinator 프로토콜 구현

2. AppCoordinator 구현 ( AppDelegate에서 사용될 Coordinator)

3. HomeCoordinator 구현 ( 초기 화면에 대한 Coordinator) AppDelegate에서 AppCoordinator 생성
