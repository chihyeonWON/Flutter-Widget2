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
