import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_appsss/moudle/post.dart';

class PostShow extends StatelessWidget {
  final Post post;

  PostShow({
    @required this.post,
  }); //构造函数

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('${post.title}'),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 16 / 16,
            child: Image.network(
              post.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(32.0),
            width: double.infinity, //宽度占满所有可用的宽度
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  post.title,
                  style: Theme.of(context).textTheme.title,
                ),
                Text(
                  post.author,
                  style: Theme.of(context).textTheme.subhead,
                ),
                SizedBox(
                  height: 32.0,
                ),
                Text(
                  post.description,
                  style: Theme.of(context).textTheme.body1,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 7,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
