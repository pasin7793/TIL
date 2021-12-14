# Subscribe

### `Subscribe`가 `Observable`에 `Observer`를 연결해주는 것이다.

## Subscribe가 하는일
Observable을 Subscribe하면 Subscribe내부에서
- `subscribe`는 `observable`의 `stream`을 관찰하고 구독 해서 받는 역할을 한다.
- 생성한 `observer`를 내부에서 생성한 `observerble`에 붙힌다
- 붙인 그 구독체를 반환한다

`Subscribe`는 이 `Observable의` `stream`을 구독(관찰)할 수 있는 역할을 합니다.
