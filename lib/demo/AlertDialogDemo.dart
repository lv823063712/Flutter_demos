//文件名: AliterDialogDemo
//创建者:Lv Fei
//创建日期:2020/8/20 13:46
//描述:AlertDiaolog组件

import 'package:flutter/material.dart';
import 'dart:async';

class AlertDialogDemo extends StatefulWidget {
  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

//定义枚举类
enum Action{No,Yes}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  String _choice = 'Nothing';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialogDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0), //设定一个全局填充
        child: Column(
          //设定一个线性布局
          mainAxisAlignment: MainAxisAlignment.center, //让部件垂直居中
          children: <Widget>[
            Text('You choice is: $_choice'),
            SizedBox(height: 16.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, //设定部件水平居中
              children: <Widget>[
                RaisedButton(
                  child: Text('Open AlertDiaolog'),
                  onPressed: _openAlertDialog,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future _openAlertDialog() async {
    final action = await showDialog(
        context: context,
        barrierDismissible: false,//这个属性用来控制对话框点按外部是否消失默认为 True 消失
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('AliertDialog'),
            content: Text('Are you sure about this?'),
            actions: <Widget>[
              FlatButton(
                child: Text('No'),
                onPressed: () {
                  Navigator.pop(context,Action.No);
                },
              ),
              FlatButton(
                child: Text('Yes'),
                onPressed: () {
                  Navigator.pop(context,Action.Yes);
                },
              ),
            ],
          );
        });
    switch(action){
      case Action.Yes:{
        setState(() {
          _choice = 'Yes';
        });
        break;
      }
      case Action.No:{
        setState(() {
          _choice = 'No';
        });
        break;
      }

    }
  }
}
