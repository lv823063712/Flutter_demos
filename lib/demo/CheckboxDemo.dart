import 'package:flutter/material.dart';

class CheckboxDemo extends StatefulWidget {
  @override
  _CheckboxDemoState createState() => _CheckboxDemoState();
}

class _CheckboxDemoState extends State<CheckboxDemo> {
  bool _checkboxItemA = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckboxDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0), //设定一个全局填充
        child: Column(
          //设定一个线性布局
          mainAxisAlignment: MainAxisAlignment.center, //让部件垂直居中
          children: <Widget>[
            CheckboxListTile(
              value: _checkboxItemA,
              onChanged: (value) {
                setState(() {
                  _checkboxItemA = value;
                });
              },
              title: Text('checkbox item A'),//主标题
              subtitle: Text('Description'),//副标题
              secondary: Icon(Icons.bookmark),//添加标签
              selected: _checkboxItemA,//选中后的标签颜色
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, //设定部件水平居中
              children: <Widget>[
                /* Checkbox(
                  value: _checkboxItemA,
                  onChanged: (value) {
                    setState(() {
                      _checkboxItemA = value;
                    });
                  },
                  activeColor: Colors.black,
                ),*/
              ],
            ),
          ],
        ),
      ),
    );
    ;
  }
}
