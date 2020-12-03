/**
 * 这个页面存放所有废弃的代码
 */












/*  final List<String> items;

  MyApp({Key key, @required this.items}) : super(key: key);*/
 //下面的代码代表的是九宫格形式的列表代码
/*@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
     *//* title: '电影海报',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            '我是标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
        ),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 5.0,
            crossAxisCount: 3,
            mainAxisSpacing: 5.0,
              childAspectRatio: 0.7
          ),
          children: <Widget>[
            Image(image: AssetImage('images/timg.jpg'),fit: BoxFit.cover,),
            Image(image: AssetImage('images/timg.jpg'),fit: BoxFit.cover,),
            Image(image: AssetImage('images/timg.jpg'),fit: BoxFit.cover,),
            Image(image: AssetImage('images/timg.jpg'),fit: BoxFit.cover,),
            Image(image: AssetImage('images/timg.jpg'),fit: BoxFit.cover,),
            Image(image: AssetImage('images/timg.jpg'),fit: BoxFit.cover,),
            Image(image: AssetImage('images/timg.jpg'),fit: BoxFit.cover,),
            Image(image: AssetImage('images/timg.jpg'),fit: BoxFit.cover,),
            Image(image: AssetImage('images/timg.jpg'),fit: BoxFit.cover,),
            Image.network('https://gank.io/images/d6bba8cf5b8c40f9ad229844475e9149',fit: BoxFit.cover,),
            Image.network('https://gank.io/images/02eb8ca3297f4931ab64b7ebd7b5b89c',fit: BoxFit.cover,),
            Image.network('https://gank.io/images/50e3dd62dd9e4b0db957b3c5e296d6b1',fit: BoxFit.cover,),
            Image.network('https://gank.io/images/19c99c447e0a40a6b3ff89951957cfb1',fit: BoxFit.cover,),
            Image.network('https://gank.io/images/bdb35e4b3c0045c799cc7a494a3db3e0',fit: BoxFit.cover,),
            Image.network('https://gank.io/images/d6bba8cf5b8c40f9ad229844475e9149',fit: BoxFit.cover,),
            Image.network('https://gank.io/images/02eb8ca3297f4931ab64b7ebd7b5b89c',fit: BoxFit.cover,),
            Image.network('https://gank.io/images/50e3dd62dd9e4b0db957b3c5e296d6b1',fit: BoxFit.cover,),
            Image.network('https://gank.io/images/19c99c447e0a40a6b3ff89951957cfb1',fit: BoxFit.cover,),
            Image.network('https://gank.io/images/bdb35e4b3c0045c799cc7a494a3db3e0',fit: BoxFit.cover,),

          ],
          *//**//*itemCount:items.length,
          itemBuilder:(context,index){
            return ListTile(
              title:Text('${items[index]}'),
            );
          }*//**//*

        ),
      ),*//*
    );
  }
}*/



//下面的代码代表的是竖向列表的代码
/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() =>
    runApp(MyApp(items: List<String>.generate(1000, (i) => "item $i")));

class MyApp extends StatelessWidget {
  final List<String> items;

  MyApp({Key key, @required this.items}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter LitView',
      home: Scaffold(
        //头部标题
          appBar: AppBar(
            //AppBar相当于引入对象
            title: Text(
              "Flutter ListView",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20.0, color: Color.fromARGB(255, 655, 755, 949)),
            ),
          ),
          body: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context,index){
                return ListTile(
                  title: Text("${items[index]}"),
                );
              }

        */
//这里是将竖向列表抽出成为一个小部件
/*Center(
          child: Container(
            height: 300.0,
            child: MyListView(),
          ),*/ /*


        */

          //这是属相列表添加数据
/*ListView(
          children: <Widget>[
            Image(image: AssetImage('images/timg.jpg')): ,
            Image.asset('images/timg.jpg'),
            Image.asset('images/timg.jpg'),
            Image.network("https://upload-images.jianshu.io/upload_images/7760510-50d13d761fb42202.gif?imageMogr2/auto-orient/strip|imageView2/2/w/324/format/webp"),
            Text('hello world')
          ],*/ /*

        //图片基本
        */
          //这里是图片控件的基本使用
/*child: Container(
              child: Image.network(
                "https://upload-images.jianshu.io/upload_images/7760510-50d13d761fb42202.gif?imageMogr2/auto-orient/strip|imageView2/2/w/324/format/webp",
                scale: 1.5,//
//                color: Colors.greenAccent,
//                colorBlendMode: BlendMode.color,//叠加模式
                repeat: ImageRepeat.repeat,
              ),
          width: 300.0,
          height: 200.0,
          color: Colors.blueAccent,*/ /*

        //文字基本
        */
/*child: Text(
            'Hello World 我去喂喂',
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.black,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.solid),
          ),
          alignment: Alignment.centerLeft,
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.fromLTRB(10.0, 3.0, 5.0, 9.0),
          margin: EdgeInsets.all(30.0),
          decoration: BoxDecoration(
              gradient:
                  const LinearGradient(colors: [Colors.blue, Colors.amber])),*/ /*

      ),
    )
    ,
    );
  }
}
这是竖向列表抽出的小部件
class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
          width: 180.0,
          color: Colors.blue,
        ),
        new Container(
          width: 180.0,
          color: Colors.greenAccent,
        ),
        new Container(
          width: 180.0,
          color: Colors.blueAccent,
        ),
        new Container(
          width: 180.0,
          color: Colors.blue,
        )
      ],
    );
  }
}
*/
