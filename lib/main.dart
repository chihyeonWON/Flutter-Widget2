import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch:Colors.blue,
      ),
      home:MyHomePage(),
    );
  }
}
// 여기까지는 공통코드

//여기부터 수정
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _valueList = ['첫 번째', '두 번째', '세 번째'];
  var _selectedValue = '첫 번째';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('DropDownButton'),
      ),
      body: DropdownButton(
        value:_selectedValue,
        items:_valueList.map(
            (value) {
              return DropdownMenuItem(
                value:value,
                child:Text(value),
              );
            },
        ).toList(),
        onChanged:(value) {
          setState(() {
            _selectedValue='첫 번째';
          });
        }
      )
    );
  }
}
