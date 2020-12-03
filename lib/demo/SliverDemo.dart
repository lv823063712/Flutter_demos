import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appsss/moudle/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            centerTitle: true,
//            title: Text('sliverBar'),
//            pinned: true,//这个属性是固定头部的bar,是否会随着页面的滑动而消失
//          floating: true,//这个属性属于向上滑动时会隐藏头部bar,在向下滑动时则会立即显示出来
            expandedHeight: 178.0,
            //单独使用这个属性,相当于占用了178个高度,但是向上滑动时会类似于支付宝上的metailral动画效果
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'lvfei Flutter'.toUpperCase(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    letterSpacing: 3.0,
                    fontWeight: FontWeight.w400),
              ),
              background: Image.network(
                'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1828982182,1114677948&fm=26&gp=0.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverSafeArea(
            //这个属性是让sliver显示在安全的视图之内,防止出现被头部的刘海之类的遮挡
            sliver: SliverPadding(
              //这个属性是增加sliver的内边距
              padding: EdgeInsets.all(8.0),
              sliver: SliverGridDemo(),
            ),
          )
        ],
      ),
    );
  }
}

class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      //和gridview差不多的网格式图
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 0.7, //设定网格图片比例1
      ),
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Container(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        );
      }, childCount: posts.length),
    );
  }
}

class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 32.0),
          child: Material(
              clipBehavior: Clip.hardEdge,
              //下面的圆角属性设置不生效,可以加上这个裁剪的属性;推测原因应该是flutter版本问题
              borderRadius: BorderRadius.circular(12.0),
              //设置圆角
              elevation: 14.0,
              //设置阴影
//            shadowColor: Colors.grey.withOpacity(0.5),
              child: Stack(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 9 / 16, //这个属性用来设置图片的比例
                    child: Image.network(
                      posts[index].imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 32.0,
                    left: 32.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //这个部件类似相当于线性布局
                      children: <Widget>[
                        Text(
                          posts[index].title,
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                        Text(
                          posts[index].author,
                          style: TextStyle(fontSize: 13.0, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        );
      }, childCount: posts.length),
    );
  }
}
