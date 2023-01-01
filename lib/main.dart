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
      home:HeroPage(),
    );
  }
}
// 여기까지는 공통코드

// 첫 번째 페이지
class HeroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Hero'),
      ),
      body:Center(
        child:GestureDetector(
          onTap:() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HeroDetailPage()),
            );
          },
          child:Hero(
            tag:'image',
            child:Image.asset(
              'assets/sky.jpg',
              width:100,
              height:100,
            ),
          ),
        ),
      ),
    );
  }
}

// 두 번째 페이지
class HeroDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Hero Detail'),
      ),
      body:Hero(
        tag:'image',
        child:Image.asset('assets/sky.jpg'),
      ),
    );
  }
}

