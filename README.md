# widget2

### 입력용 위젯

#### TextField
```
글자를 입력받는 위젯입니다.
InputDecoration 클래스와 함께 사용하면 힌트 메시지나 외곽선 등의 꾸밈 효과를
간단히 추가할 수 있습니다.
```
![image](https://user-images.githubusercontent.com/58906858/210125810-245c302a-65d2-41ad-aade-168e072bd83a.png)

#### CheckedBox와 Switch
```
설정 화면 등에 많이 사용되는 체크박스, 라디오 버튼, 스위치를 표현하는 위젯입니다.
CheckBox와 Switch는 모양만 다를 뿐 사용 방법은 동일합니다.
상태를 나타내는 변수가 등장하므로 StatefulWidget으로 하고 상태를 나타낼 불리언 타입의 변수를 value 프로퍼티에 설정합니다.
```
![image](https://user-images.githubusercontent.com/58906858/210126338-b492ded9-07ff-4a7d-be0a-1ee974081048.png)

#### Radio, RadioListTile
```
선택 그룹 중 하나를 선택할 때 사용하는 위젯입니다.
어디까지를 터치 영역으로 볼 것이냐에 따라 Radio를 사용하거나 RadioListTile을 사용하는 두 가지 방법을 사용합니다
그룹이 되는 항목을 enum으로 정의하고 groupValue 프로퍼티에 열거형으로 정의한 Gender 타입의 변수를 지정하고
onChanged 이벤트에서 변경된 값을 반영합니다.
```
![image](https://user-images.githubusercontent.com/58906858/210126776-0780b56c-e108-47e7-af11-d8d83644a659.png)

#### DropDownButton
```
여러 아이템 중 하나를 고를 수 있는 콤보박스 형태의 위젯입니다.
value 프로퍼티에 표시할 값을 지정합니다.
items 프로퍼티에는 표시할 항목들을 DropdownMenuItem 클래스의 인스터들을 담은 리스트로 지정해야 합니다
상태를 가지므로 StatefulWidget 으로 작성합니다.
```
![image](https://user-images.githubusercontent.com/58906858/210160202-da8db517-3ee8-4b47-941e-b8220ea053e3.png)

### 이벤트
```
onTap, onPressed 등의 이벤트를 기본 프로퍼티로 가지고 있지 않은 위젯에 이벤트를 적용할 수 있도록 해주는 위젯을 의미합니다.
```

#### GestureDetector, InkWell
```
글자나 그림 같이 이벤트 프로퍼티가 없는 위젯에 이벤트를 적용하고 싶을 때 사용하는 위젯입니다.
GesturDector, InkWell 위젯은 터치 이벤트를 발생시킵니다. onTap 프로퍼티를 가지고 있어서 child 프로퍼티에 
어떠한 위젯이 와도 클릭 이벤트를 작성할 수 있습니다. 
```

![image](https://user-images.githubusercontent.com/58906858/210161051-53270539-ce36-40ea-9d24-ef722af011d4.png)

### 애니메이션

#### Hero
```
Hero 위젯은 화면 전환 시 자연스럽게 연결되는 애니메이션을 지원합니다.
이전 화면으로 돌아갈 때도 자연스럽게 애니메이션이 동작합니다.
```
![image](https://user-images.githubusercontent.com/58906858/210161307-3fcc1b36-7981-4381-ad02-d43daa831282.png)

#### AnimatedContainer
```
Hero 위젯이 화면 전환 시 애니메이션 효과를 지원했다면 AnimatedContainer 위젯은 
한 화면 내에서 setState() 함수를 호출하여 화면을 새로 그릴 때 변경된 프로퍼티에 의해
애니메이션 되도록 해줍니다.
Container 위젯과 쓰임새는 비슷하지만 duration, curve 등의 애니메이션 관련 프로퍼티가 있습니다.
```
탭했을 때 크기가 랜덤하게 변경되어 애니메이션 되는 예를 작성하였습니다.
![image](https://user-images.githubusercontent.com/58906858/210161476-59031c1b-fdc2-459f-b16c-cdb03f443ebb.png)

#### SliverAppBar, SliverFillRemaining
```
SliverAppBar, SliverFillRemaining은 화면 헤더를 동적으로 표현하는 위젯입니다.
헤더를 위로 스크롤하면 헤더 부분이 작아지면서 헤더 하단에 있던 정적인 내용만 보이는
AppBar 형태로 애니메이션됩니다. 이런 효과를 Sliver효과라고 합니다.
```
![image](https://user-images.githubusercontent.com/58906858/210195946-cc160509-961e-4396-aee9-30a124e22618.png)

#### SliverAppBar, SliverList
```
하나의 정적인 화면을 구성하는 SliverFillRemaining 위젯과는 달리 ListView를 사용하면서 Sliver효과를 주고 싶다면
SliverList를 사용하여 리스트를 구성할 수 있습니다.
```
![image](https://user-images.githubusercontent.com/58906858/210196360-6e6f6e51-41f7-4916-ac8c-33890b361b0d.png)
