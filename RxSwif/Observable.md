# Observable이란?

여러 이벤트들을 생성`Emit`할 수 있는 대상이다. 
`Emit`은 계속해서 이벤트를 생성하는데 이러한 과정을 의미한다.

observable, observable sequence, sequence 다 같은 말이다.

Rx의 기본이되는 스트림을 가지고 있는 시본 시퀀스

## Observable의 구성요소
` next,error,completed로 구성되어있다. `

next: 최신/다음 데이터를 전달하는 이벤트

completed: 성공적으로 일련의 이벤트들을 종료시키는 이벤트

error: Observable이 에러를 발생하였으며, 추가적으로 이벤트를 생성하지 않을 것임을 의미
