import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int _radioGroupA = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RadioDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0), //设定一个全局填充
        child: Column(
          //设定一个线性布局
          mainAxisAlignment: MainAxisAlignment.center, //让部件垂直居中
          children: <Widget>[
            Text('RadioGroupValue $_radioGroupA'),
            SizedBox(height: 32.0,),
            RadioListTile(
              value: 0,
              groupValue: _radioGroupA,
              onChanged: _handleRadioValueChanged,
              title: Text('Options A'),
              subtitle: Text('我是副标题'),
              secondary: Icon(Icons.filter_1),
              selected: _radioGroupA == 0,
            ),
            RadioListTile(
              value: 1,
              groupValue: _radioGroupA,
              onChanged: _handleRadioValueChanged,
              title: Text('Options B'),
              subtitle: Text('我是副标题'),
              secondary: Icon(Icons.filter_2),
              selected: _radioGroupA == 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, //设定部件水平居中
              children: <Widget>[
                /*Radio(
                  value: 0, //单个值
                  groupValue: _radioGroupA, //群组值
                  onChanged: _handleRadioValueChanged, //方法
                  activeColor: Colors.black,
                ),
                Radio(
                  value: 1, //单个值
                  groupValue: _radioGroupA, //群组值
                  onChanged: _handleRadioValueChanged, //方法
                  activeColor: Colors.black,
                ),*/
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _handleRadioValueChanged(int value) {
    setState(() {
      _radioGroupA = value;
    });
  }
}
