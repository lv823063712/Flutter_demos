import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  @override
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _switchItemA = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SwitchDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0), //设定一个全局填充
        child: Column(
          //设定一个线性布局
          mainAxisAlignment: MainAxisAlignment.center, //让部件垂直居中
          children: <Widget>[
            SwitchListTile(
              value: _switchItemA,
              onChanged: (value) {
                setState(() {
                  _switchItemA = value;
                });
              },
              title:Text('Switch Item A'),
              subtitle: Text('我是副标题'),
              secondary: Icon(_switchItemA ? Icons.visibility :Icons.visibility_off),
              selected: _switchItemA,

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, //设定部件水平居中
              children: <Widget>[
                /*Text(_switchItemA?'笑脸':'哭'),
                Switch(
                    value: _switchItemA,
                    onChanged: (value){
                      setState(() {
                        _switchItemA = value;
                      });
                    })*/
              ],
            ),
          ],
        ),
      ),
    );
  }
}
