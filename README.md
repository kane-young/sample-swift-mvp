# sample-swift-mvp
MVP 패턴에 대한 이해를 높이기 위해서 샘플 코드 작성 및 기록

# MVP 패턴

>  MVP(Model-View-Presenter) 패턴은 소프트웨어 아키텍처 패턴이다

```
M (Model)
- 데이터 모델
- 실질적인 데이터

V (View)
- MVC의 View와 ViewController를 모두 포함
- 사용자에게 보여지는 UI요소

P (Presenter)
- UIKit과 관련이 없는 로직들을 수행
- 사용자 응답에 반응하거나 UI를 업데이트하는 일을 담당
- View에서 요청한 정보를 Model로 부터 가공해서 View로 전달하는 부분
```



## MVVM 상세

**흐름도**

1. View로 사용자의 입력이 들어온다
2. View는 Presenter에 작업 요청을 합니다
3. Presenter에서 필요한 데이터를 Model에 요청한다
4. Model은 Presenter에 필요한 데이터를 응답합니다
5. Presenter는 View에 데이터를 응답합니다
6. View는 Presenter로부터 받은 데이터로 화면에 보여주게 됩니다

<img width="700" alt="스크린샷 2021-11-11 오전 1 45 31" src="https://user-images.githubusercontent.com/64566207/141156946-6c8baa8e-43d5-443f-ae4b-7e6357554c03.png">

<br>

## 샘플 코드 구성

> 첫번째 샘플의 경우 빨, 초, 노 버튼을 누르면 Label을 통해서 해당 버튼에 대한 Text를 출력

<table style="width:100%">
  <tr>
	<th>구조</th> 
    <th>실행 전 (첫번째 셈플)<br>스토리보드</th>
    <th>실행 후 (첫번째 셈플)</th> 
  </tr>
  <tr>
  	<td><img width="268" height="480" src="https://user-images.githubusercontent.com/64566207/141164205-ea0aa26d-8c86-46f2-8dbe-1fb2dbfae57a.png"></img></td>
    <td><img width="268" height="480" src="https://user-images.githubusercontent.com/64566207/141163998-bd419913-019c-4b4a-b87a-93ff7c664644.png"></img></td>
    <td><img width="250" height="480" src="https://user-images.githubusercontent.com/64566207/141164105-7047e9c8-69cc-4669-8288-c7c0cc5e7ca3.gif"></img></td> 
  </tr>
</table>



## 생각

1. `Presenter` 의 경우 `View` 에서 강한참조로 가지고 있으며, `Presenter` 에서는 Delegate를 통해서 약한 참조를 통해 가지고 있기 때문에 `View`와 `Presenter` 가 완벽히 독립되어있다고는 할 수 없다.

2. `MVVM` 에서는 `ViewModel` 을 `View` 에서 가지고 있으며, `ViewModel` 은 단지 `Model` 을 가지고 있으며 `View` 의 명령을 수행하며 `Model` 을 변경시키기만 하는데, 단방향이라고 했던 점을 `MVP` 를 학습하면서 완전하게 이해가 되었다.

3. `MVC` 보다는 각 구성 간의 독립성이 높아져서, Test Coverage가 높아질 것 같다

4. `Presenter` 에 대한 테스트를 어떻게 진행해야될지 고민이다. `View`의 역할을 하는 `Mock` 객체를 만들어줘야 하는 것인지 모르겠다. `MVP` 구조에서의 Test 예제가 너무 없다.

<br>

# 링크



링크



# 링크

## 링크

- [MVC, MVP, MVVM 비교](https://magi82.github.io/android-mvc-mvp-mvvm/) : 기존에 적용해 본 경험이 있는 MVC, MVVM과 같이 봐서 이해가 더 빠르다. 좋은 글이다.
- [MVP 아키텍쳐 특징](https://medium.com/@saad.eloulladi/ios-swift-mvp-architecture-pattern-a2b0c2d310a3) : Raywenderich, youtube, 각종 블로그 글에 나오는 전형적인 `MVP` 패턴 예제이다. 깔끔하다