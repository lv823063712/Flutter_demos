import 'package:flutter/material.dart';
import 'dart:async';

class SimpleDialogDemo extends StatefulWidget {
  @override
  _SimpleDialogDemoState createState() => _SimpleDialogDemoState();
}

enum Option { A, B, C }

class _SimpleDialogDemoState extends State<SimpleDialogDemo> {
  String _choice = 'Nothing';

  //这里添加async应该是因为页面绑定弹窗的问题
  Future _openSimpleDialog() async {
    final option = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text('SimpleDialog'),
          children: <Widget>[
            SimpleDialogOption(
              child: Text("Option A"),
              onPressed: () {
                Navigator.pop(context, Option.A);
              },
            ),
            SimpleDialogOption(
              child: Text("Option B"),
              onPressed: () {
                Navigator.pop(context, Option.B);
              },
            ),
            SimpleDialogOption(
              child: Text("Option C"),
              onPressed: () {
                Navigator.pop(context, Option.C);
              },
            ),
          ],
        );
      },
    );
    switch(option){
      case Option.A:{
        setState(() {
          _choice =  'A';
        });
        break;

      }
      case Option.B:{
        setState(() {
          _choice =  'B';
        });
        break;
      }
      case Option.C:{
        setState(() {
          _choice =  'C';
        });
        break;
      }


    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SimpleDialogDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0), //设定一个全局填充
        child: Column(
          //设定一个线性布局
          mainAxisAlignment: MainAxisAlignment.center, //让部件垂直居中
          children: <Widget>[
            Text('You choice is : $_choice'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, //设定部件水平居中
              children: <Widget>[],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.format_list_numbered),
        onPressed: _openSimpleDialog,
      ),
    );
  }
}
