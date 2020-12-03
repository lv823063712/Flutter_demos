//文件名: BottomSheetDemo
//创建者:Lv Fei
//创建日期:2020/8/20 14:18
//描述:底部弹窗

import 'package:flutter/material.dart';
import 'dart:async';
class BottomSheetDemo extends StatefulWidget {
  @override
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetScaffoldKey,
      appBar: AppBar(
        title: Text('BottomSheetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0), //设定一个全局填充
        child: Column(
          //设定一个线性布局
          mainAxisAlignment: MainAxisAlignment.center, //让部件垂直居中
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center, //设定部件水平居中
              children: <Widget>[
                FlatButton(
                  //类似于POpWindow,但是只能系统触发返回消失,或者手动隐藏
                  child: Text('Open bottomSheet'),
                  onPressed: _openBottomSheet,
                ),
                FlatButton(
                  //类似于PopWindow
                  child: Text('Modal bottomSheet'),
                  onPressed: _openModalBottomSheet,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _openBottomSheet() {
    _bottomSheetScaffoldKey.currentState.showBottomSheet(
      (BuildContext context) {
        return BottomAppBar(
          child: Container(
            height: 90.0,
            width: double.infinity,
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Icon(Icons.pause_circle_outline),
                SizedBox(
                  width: 16.0,
                ),
                Text('01:30/03:30'),
                Expanded(
                    child: Text(
                  'Fix you - Coldplay',
                  textAlign: TextAlign.right,
                ))
              ],
            ),
          ),
        );
      },
    );
  }

  Future _openModalBottomSheet() async {
   final option =  await showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200.0,
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('Option A'),
                onTap: () {
                  Navigator.pop(context, 'A');
                },
              ),
              ListTile(
                title: Text('Option B'),
                onTap: () {
                  Navigator.pop(context, 'B');
                },
              ),
              ListTile(
                title: Text('Option C'),
                onTap: () {
                  Navigator.pop(context, 'C');
                },
              ),
            ],
          ),
        );
      },
    );
   print(option);
  }
}
