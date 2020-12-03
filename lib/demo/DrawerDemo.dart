
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 270.0,
      color: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('吕飞',style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold),),
            accountEmail: Text('823063712@qq.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2239940158,1748544617&fm=26&gp=0.jpg'),
            ),
            decoration:BoxDecoration(
                color: Colors.yellow[400],
                image: DecorationImage(
                    image: NetworkImage('https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=4136348354,3381364791&fm=26&gp=0.jpg'),
                    fit: BoxFit.cover,//设置图片填充方式
                    colorFilter: ColorFilter.mode(Colors.lightBlueAccent.withOpacity(0.5), BlendMode.hardLight)

                )
            ) ,
          ),
          ListTile(
            title: Text('消息',textAlign: TextAlign.left,),
            trailing: Icon(Icons.message,color: Colors.black26,size: 22.0,),
            onTap: ()=>Navigator.pop(context),

          ),
          ListTile(
            title: Text('爱心',textAlign: TextAlign.left,),
            trailing: Icon(Icons.favorite,color: Colors.black26,size: 22.0,),
            onTap: ()=>Navigator.pop(context),
          ),
          ListTile(
            title: Text('设置',textAlign: TextAlign.left,),
            trailing: Icon(Icons.settings,color: Colors.black26,size: 22.0,),
            onTap: ()=>Navigator.pop(context),
          ),
        ],
      ),
    );
  }

}