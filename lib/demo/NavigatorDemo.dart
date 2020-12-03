import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text("Home"),
              onPressed: null,
            ),
            FlatButton(
              child: Text('About'),
              //这个属性是回调
              onPressed: () {
                Navigator.pushNamed(context, '/about');
                /*Navigator.of(context).push(MaterialPageRoute(
                  //这个是路由跳转新页面  新页面会自带一个返回按键(在不添加的情况下)
                    builder: (BuildContext context) =>
                        Page(
                          title: 'About',
                        )));*/
              },
            )
          ],
        ),
      ),
    );
  }
}

class Page extends StatelessWidget {
  final String title;

  const Page({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0.0,
      ),
      //这个按钮是一个悬浮的按钮
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back),
          onPressed:(){
            Navigator.pop(context);
          }
      ),
    );
  }
}
