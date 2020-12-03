import 'package:flutter/material.dart';

class PopupMenuButtonDemo extends StatefulWidget {
  @override
  _PopupMenuButtonDemoState createState() => _PopupMenuButtonDemoState();
}

class _PopupMenuButtonDemoState extends State<PopupMenuButtonDemo> {
  String _currentMenuItem = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopupMenuButtonDemo'),
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
                Text(_currentMenuItem),
                PopupMenuButton(
                  onSelected: (value){
                    print(value);
                    setState(() {
                      _currentMenuItem = value;
                    });
                  },
                  itemBuilder: (BuildContext context) =>[
                    PopupMenuItem(
                      value:'Home',
                      child: Text('Home'),
                    ),
                    PopupMenuItem(
                      value:'Discover',
                      child: Text('Discover'),
                    ),
                    PopupMenuItem(
                      value:'Community',
                      child: Text('Community'),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
