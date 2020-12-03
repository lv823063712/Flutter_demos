
import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //创建文字按钮可以参考这里的代码
    final Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center, //设定部件水平居中
      children: <Widget>[
        //onPressed如果为null就是禁用状态
        FlatButton(
          child: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );
    //创建按钮可以参考这里的代码
    final Widget raisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center, //设定部件水平居中
      children: <Widget>[
        //onPressed如果为null就是禁用状态
        Theme(
          data: Theme.of(context).copyWith(
              buttonColor: Theme.of(context).accentColor,
              buttonTheme: ButtonThemeData(
                  textTheme: ButtonTextTheme.primary,
                  /*shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      )*/
                  shape: StadiumBorder())),
          child: RaisedButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey,
//                  textColor: Theme.of(context).accentColor,
//                  textTheme: ButtonTextTheme.primary,//可以单独设置文字的主题
//                  color: Theme.of(context).accentColor,
          ),
        ),
        SizedBox(
          width: 16.0,
        ),
        RaisedButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          elevation: 12.0,
          //这个属性用来控制阴影
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );
    //创建带描边的按钮可以参考这里的代码
    final Widget outlineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center, //设定部件水平居中
      children: <Widget>[
        //onPressed如果为null就是禁用状态
        Theme(
          data: Theme.of(context).copyWith(
              buttonColor: Theme.of(context).accentColor,
              buttonTheme: ButtonThemeData(
                  textTheme: ButtonTextTheme.primary,
                  /*shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      )*/
                  shape: StadiumBorder())),
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100],
            borderSide: BorderSide(color: Colors.black),
            textColor: Colors.black,
            highlightColor: Colors.grey, //高亮状态下的按钮颜色
//                  textColor: Theme.of(context).accentColor,
//                  textTheme: ButtonTextTheme.primary,//可以单独设置文字的主题
//                  color: Theme.of(context).accentColor,
          ),
        ),
        SizedBox(
          width: 16.0,
        ),
        OutlineButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );
    //创建有固定宽度按钮可以参考这里的代码
    final Widget fixedWidthButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center, //设定部件水平居中
      children: <Widget>[
        Container(
          width: 130.0,
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100],
            borderSide: BorderSide(color: Colors.black),
            highlightColor: Colors.grey,
            //高亮状态下的按钮颜色
            textColor: Colors.black,
          ),
        ),
      ],
    );
    //创建占满可用宽度的按钮可以参考这里的代码(类似于使用权重布局)
    final Widget expandedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center, //设定部件水平居中
      children: <Widget>[
        Expanded(
          flex: 2, //设置权重
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100],
            borderSide: BorderSide(color: Colors.black),
            highlightColor: Colors.grey,
            //高亮状态下的按钮颜色
            textColor: Colors.black,
          ),
        ),
        SizedBox(
          width: 16.0,
        ),
        Expanded(
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100],
            borderSide: BorderSide(color: Colors.black),
            highlightColor: Colors.grey,
            //高亮状态下的按钮颜色
            textColor: Colors.black,
          ),
        ),
      ],
    );
    //创建一组带边距的横排展示按钮
    final Widget buttonBarDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center, //设定部件水平居中
      children: <Widget>[
        Theme(
            data: Theme.of(context).copyWith(
              buttonTheme: ButtonThemeData(
                  padding: EdgeInsets.symmetric(horizontal: 32.0)
              ),
            ),
            child: ButtonBar(
              children: <Widget>[
                OutlineButton(
                  child: Text('Button'),
                  onPressed: () {},
                  splashColor: Colors.grey[100],
                  borderSide: BorderSide(color: Colors.black),
                  highlightColor: Colors.grey,
                  //高亮状态下的按钮颜色
                  textColor: Colors.black,
                ),
                OutlineButton(
                  child: Text('Button'),
                  onPressed: () {},
                  splashColor: Colors.grey[100],
                  borderSide: BorderSide(color: Colors.black),
                  highlightColor: Colors.grey,
                  //高亮状态下的按钮颜色
                  textColor: Colors.black,
                ),
              ],
            ))
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0), //设定一个全局填充
        child: Column(
          //设定一个线性布局
          mainAxisAlignment: MainAxisAlignment.center, //让部件垂直居中
          children: <Widget>[
            flatButtonDemo,raisedButtonDemo,outlineButtonDemo,fixedWidthButtonDemo,expandedButtonDemo,buttonBarDemo
          ],
        ),
      ),
    );
  }
}
