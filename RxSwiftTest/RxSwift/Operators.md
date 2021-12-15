# Operators

### Operator(연산자)는 Observable을 다루는 메소드들을 통칭하는 용어입니다.

## Observable 생성 연산자

* `Create` — 직접적인 코드 구현을 통해 옵저버 메서드를 호출하여 Observable을 생성한다
* `Defer` — 옵저버가 구독하기 전까지는 Observable 생성을 지연하고 구독이 시작되면 옵저버 별로 새로운 Observable을 생성한다
* `Empty`/`Never`/`Throw` — 아주 정확하고 제한된 행동을 하는 Observable을 생성한다
* `From` — 다른 객체나 자료 구조를 Observable로 변환한다
* `Interval` — 특정 시간별로 연속된 정수형을 배출하는 Observable을 생성한다
* `Just` — 객체 하나 또는 객채집합을 Observable로 변환한다. 변환된 Observable은 원본 객체들을 발행한다
* `Range` — 연속된 범위(Range)의 정수를 발행하는 Observable을 생성한다
* `Repeat` — 특정 항목이나 연속된 항목들을 반복적으로 배출하는 Observable을 생성한다
* `Start` — 함수의 실행 결과를 배출하는 Observable을 생성한다
* `Timer` — 지정된 시간이 지나고 난 후 항목을 하나 배출하는 Observable을 생성한다

## Observable 반환 연산자

* `Buffer` — Observable로부터 정기적으로 항목들을 수집하고 묶음으로 만든 후에 묶음 안에 있는 항목들을 한번에 하나씩 배출하지 않고 수집된 묶음 단위로 배출한다
* `FlatMap` — 하나의 Observable이 발행하는 항목들을 여러개의 Observable로 변환하고, 항목들의 배출을 차례차례 줄 세워 하나의 Observable로 전달한다
* `GroupBy` — 원본 Observable이 배출하는 항목들을 키(Key) 별로 묶은 후 Observable에 담는다. 이렇게 키 별로 만들어진 Observable들은 자기가 담고 있는 묶음의 항목들을 배출한다
* `Map` — Observable이 배출한 항목에 함수를 적용한다
* `Scan` — Observable이 배출한 항목에 연속적으로 함수를 적용하고 실행한 후 성공적으로 실행된 함수의 리턴 값을 발행한다
* `Window` — 정기적으로 Observable의 항목들을 더 작은 단위의 Observable 윈도우로 나눈 후에, 한번에 하나씩 항목들을 발행하는 대신 작게 나눠진 윈도우 단위로 항목들을 배출한다

## Observable 필터 연산자

* `Debounce` — Observable의 시간 흐름이 지속되는 상태에서 다른 항목들은 배출하지 않고 특정 시간 마다 그 시점에 존재하는 항목 하나를 Observable로부터 배출한다
* `Distinct` — Observable이 배출하는 항목들 중 중복을 제거한 항목들을 배출한다
* `ElementAt` — Obserable에서 n번째 항목만 배출한다
* `Filter` — 테스트 조건을 만족하는 항목들만 배출한다
* `First` — 맨 첫 번째 항목 또는 조건을 만족하는 첫 번째 항목만 배출한다
* `IgnoreElements` — 항목들을 배출하지는 않고 종료 알림은 보낸다
* `Last` — Observable의 마지막 항목만 배출한다
* `Sample` — 특정 시간 간격으로 최근에 Observable이 배출한 항목들을 배출한다
* `Skip` — Observable이 배출한 처음 n개의 항목들을 숨긴다
* `SkipLast` — Observable이 배출한 마지막 n개의 항목들을 숨긴다
* `Take` — Observable이 배츨한 처음 n개의 항목들만 배출한다
* `TakeLast` — Observable이 배출한 마지막 n개의 항목들만 배출한다
