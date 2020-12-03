
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigatpionBarDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomNavigatpionBarDemoState();
  }

}

class _BottomNavigatpionBarDemoState extends State<BottomNavigatpionBarDemo> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTapHandler,//这是选择导航键的方法
      type: BottomNavigationBarType.fixed,
      //如果超过三个导航按键需要设置成这种属性
      fixedColor: Colors.black,
      //选中后的颜色
      //底部导航栏
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.explore), /*Image(
                  width: 27,
                  height: 27,
                  image: AssetImage('images/icon_unyue.png'),
                )*/
            title: Text('导航')),
        BottomNavigationBarItem(
            icon: Icon(Icons.history), title: Text('历史')),
        BottomNavigationBarItem(icon: Icon(Icons.list), title: Text('列表')),
        BottomNavigationBarItem(
            icon: Icon(Icons.person), title: Text('我的')),
      ],
    );
  }

  void _onTapHandler(int value) {
    setState(() {//这个方法不能用静态的widget,只能中动态的 也就是statefulwidget
      _currentIndex = value;
    });
  }
}