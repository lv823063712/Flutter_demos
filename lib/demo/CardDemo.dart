//文件名: CardDemo
//创建者:Lv Fei
//创建日期:2020/8/24 10:20
//描述:TODO

import 'package:flutter/material.dart';
import 'package:flutter_appsss/moudle/post.dart';

class CardDemo extends StatefulWidget {
  @override
  _CardDemoState createState() => _CardDemoState();
}

class _CardDemoState extends State<CardDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CardDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0), //设定一个全局填充
        child: ListView(
          children: posts.map(
            (post) {
              return Card(
                child: Column(
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 12 / 16,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        child: Image.network(
                          post.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(post.imageUrl),
                      ),
                      title: Text(post.title),
                      subtitle: Text(post.author),
                    ),
                    Container(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        post.description,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    ButtonTheme.bar(
                      child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                              onPressed: () {},
                              child: Text('Like'.toUpperCase())),
                          FlatButton(
                              onPressed: () {},
                              child: Text('Read'.toUpperCase()))
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
