# Observable 생성 연산자

### 1. just

- 가장 기본적인 연산자이다.

- 생성된 이벤트를 바로 전달하고 completed 된다.

### 2. of

- 2개 이상의 이벤트를 전달하는 경우에 쓰인다.

- from과 혼동을 주의해야함, `of`는 Observable<[Int]>를 return하고 `from`은 배열 안의 요소 각각을 Observable로 return 한다.

### 3. from

- 배열의 값을 각각 다르게 전달할 때에 쓰이는 연산자이다.

- of 연산자는 개별이 아닌 통째로 넘긴다.

### 4. range

- 시작 값에서부터 지정한 갯수 만큼 1씩 증가시킨 값 각각의 Observable을 생성한다.
