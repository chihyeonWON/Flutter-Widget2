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

enum Gender { MAN, WOMEN }

class _MyHomePageState extends State<MyHomePage> {
  Gender _gender = Gender.MAN;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Radio / RadioListTile'),
      ),
      body: Padding(
        padding:const EdgeInsets.all(8.0),
        child:Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
              ListTile(
                  title:Text('남자'),
                  leading: Radio(
                      value:Gender.MAN,
                      groupValue:_gender,
                      onChanged:(value){
                        setState((){
                          _gender = Gender.MAN;
                         });
                      },
                   ),
              ),
              ListTile(
                  title:Text('여자'),
                  leading: Radio(
                      value:Gender.WOMEN,
                      groupValue:_gender,
                      onChanged:(value){
                        setState((){
                          _gender = Gender.WOMEN;
                        });
                      },
                  ),
              ),
              SizedBox(
                height:40,
              ),
              RadioListTile(
                title:Text('남자'),
                value:Gender.MAN,
                groupValue:_gender,
                onChanged:(value){
                  setState((){
                    _gender = Gender.MAN;
                  });
                },
              ),
              RadioListTile(
                title:Text('여자'),
                value:Gender.WOMEN,
                groupValue:_gender,
                onChanged:(value){
                  setState((){
                    _gender = Gender.WOMEN;
                  });
                },
              ),
            ]
          )
        )
      )
    );
  }
}
