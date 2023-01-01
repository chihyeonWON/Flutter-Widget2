import 'package:flutter/material.dart';
import 'dart:math'; // random클래스 사용시 필요

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch:Colors.blue,
      ),
      home:AnimatedContainerPage(),
    );
  }
}
// 여기까지는 공통코드

class  AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  var _size = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('AnimatedContainer'),
      ),
      body:Center(
        child:GestureDetector(
          onTap:(){
            final random = Random(); // Radnom 클래스 사용 준비
            setState(() {
              //클릭할 때마다 100.0~299.0 사이의 실수를 랜덤하게 얻기
              _size = random.nextInt(200).toDouble() +100;
            });
          },
          child:AnimatedContainer(
            duration:Duration(seconds:1),
            width:_size,
            height:_size,
            child:Image.asset('assets/sky.jpg'),
            curve:Curves.fastOutSlowIn,
          ),
        ),
      ),
    );
  }
}

