import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
//      color: Colors.grey[200],
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage('https://gank.io/images/e941fa5d2cfb4a8297128178c371908c'),
              alignment: Alignment.topCenter,
              fit: BoxFit.cover,

//        repeat: ImageRepeat.repeat
              )),
      child: Row(
        //可以添加横排展示的东西
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(
              Icons.pool,
              size: 32.0,
              color: Colors.white70,
            ),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              border: Border.all(
                  color: Colors.indigoAccent[100],
                  width: 3.0,
                  style: BorderStyle.solid),
//              borderRadius: BorderRadius.circular(30.0), //在圆角效果处不能使用圆形图片属性shape circle
              boxShadow: [
                BoxShadow(
                    offset: Offset(6.0, 7.0),
                    color: Color.fromRGBO(16, 20, 188, 1.0),
                    blurRadius: 10.0, //模糊效果属性
                    spreadRadius: 3.0),
              ],
              shape: BoxShape.circle, //这里用来设置盒子的形状
              /*gradient: LinearGradient(//这个属性用来设置渐变颜色
                colors: [
                  Color.fromRGBO(7, 55, 666, 1.0),
                  Color.fromRGBO(33, 99, 555, 1.0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              )*/
            ),
          ),
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
      text: TextSpan(
          text: 'bigFly',
          style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 30.0,
              fontStyle: FontStyle.italic),
          children: [
            TextSpan(
                text: '.com',
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 20.0,
                    fontStyle: FontStyle.italic))
          ]),
    );
    ;
  }
}

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final TextStyle _textStyle = TextStyle(
      fontSize: 16.0,
    );
    final String _author = '马东';
    final String _title = '无题';
    return Text(
      '$_title\n$_author\n伤情最是晚凉天，憔悴斯人不堪怜。\n邀酒摧肠三杯醉，寻香惊梦五更寒。\n钗头凤斜卿有泪，荼蘼花了我无缘。\n小楼寂寞新雨月，也难如钩也难圆。',
      textAlign: TextAlign.center,
      style: _textStyle,
      maxLines: 6,
      overflow: TextOverflow.ellipsis,
    );
  }
}
