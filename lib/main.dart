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
      home:SliverListPage(),
    );
  }
}
// 여기까지는 공통코드
class SliverListPage extends StatelessWidget {
  final _items = List.generate(50, (i) => ListTile(title: Text('No. $i')));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomScrollView(
        slivers:<Widget>[
          SliverAppBar( // 헤더 영역
            pinned:true, // 축소시 상단에 AppBar가 고정되는지 설정
            expandedHeight:180.0, // 헤더의 최대 높이
            flexibleSpace:FlexibleSpaceBar(
              title:Text('Sliver'),
              background:Image.asset(
                'assets/sky.jpg',
                fit:BoxFit.cover,
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon:Image.asset('assets/sky.jpg'),
                onPressed:(){},
              )
            ],
          ),
          SliverList(
            delegate:SliverChildListDelegate(_items),
          )
         ]
      ),
    );
  }
}

