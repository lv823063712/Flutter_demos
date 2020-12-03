import 'package:flutter/material.dart';
import 'package:flutter_appsss/demo/PostShow.dart';
import 'package:flutter_appsss/moudle/post.dart';

class ListViews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: posts.length, itemBuilder: _listitembuilder);
  }

  //类似于java中 封装一个方法,只不过是把控件进行封装
  Widget _listitembuilder(BuildContext context, int index) {
    return Container(
        color: Colors.white,
        margin: EdgeInsets.all(8.0),
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 9 / 13,
                  child: Image.network(
                    posts[index].imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Text(
                  posts[index].title,
                  style: Theme.of(context).textTheme.title,
                ),
                Text(
                  posts[index].author,
                  style: Theme.of(context).textTheme.subhead,
                ),
                SizedBox(
                  height: 16.0,
                )
              ],
            ),
            Positioned.fill(
                child: Material(
              color: Colors.transparent, //透明色
              child: InkWell(
                //增加一个溅墨效果
                splashColor: Colors.white.withOpacity(0.3),
                highlightColor: Colors.white.withOpacity(0.1),
                onTap: () {
                  //点击回调
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => PostShow(
                            post: posts[index],
                          )));
                },
              ),
            ))
          ],
        ));
  }
}
