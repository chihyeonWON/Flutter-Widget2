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
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('TextField'),
        ),
        body:s
    );
  }
}
