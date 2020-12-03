import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appsss/demo/DrawerDemo.dart';
import 'package:flutter_appsss/demo/FormDemo.dart';
import 'package:flutter_appsss/demo/LayoutDemo.dart';
import 'package:flutter_appsss/demo/MaterialComponents.dart';
import 'package:flutter_appsss/demo/NavigatorDemo.dart';
import 'package:flutter_appsss/demo/SliverDemo.dart';
import 'package:flutter_appsss/demo/state/StateManagementDemo.dart';

import 'demo/BasicDemo.dart';
import 'demo/BottomNavigatpionBarDemo.dart';
import 'demo/listview_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlutterDemo',
//      home: NavigatorDemo(),
      initialRoute: '/state-management', //初始路由
      routes: {
        '/': (context) => Home(),
        //'/about':(context)=>Page(title: 'About',),
        '/form': (context) => FormDemo(),
        '/mdc': (context) => MaterialComponents(),
        '/state-management': (context) => StateManagementDemo(),
      },
      theme: ThemeData(
          primaryColor: Colors.yellow, //背景主题色
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5), //按下高亮色
          splashColor: Colors.white70, //水波纹颜色
          accentColor: Color.fromRGBO(3, 54, 255, 1.0)), //设置主题,也就是头部的背景色之类的
    );
  }
}

//home小控件
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          //Scaffold可以为页面提供一个基本结构
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            centerTitle: true,
            //这个属性用来让title居中
            //顶部的工具栏
            title: Text(
              'Flutter_Demo',
              style: TextStyle(fontSize: 22.0),
            ),
            actions: <Widget>[
              //这里可以设置一组小部件右部按钮
              IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Navigration',
                onPressed: () => debugPrint('搜索按钮'),
              ),
            ],
            elevation: 0.0,
            //自带的阴影效果
            bottom: TabBar(
              unselectedLabelColor: Colors.redAccent,
              //未选中颜色
              indicatorColor: Colors.black54,
              //标识线的颜色
              indicatorSize: TabBarIndicatorSize.label,
              //标识线显示的长度
              indicatorWeight: 3.0,
              //tab的标识线粗细
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.cake)),
                Tab(icon: Icon(Icons.satellite)),
                Tab(icon: Icon(Icons.view_quilt)),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListViews(),
              BasicDemo(),
              LayoutDemo(),
              SliverDemo(),
            ],
          ),
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomNavigatpionBarDemo()),
    );
  }
}
