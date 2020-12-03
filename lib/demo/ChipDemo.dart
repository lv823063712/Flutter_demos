//文件名: ChipDemo
//创建者:Lv Fei
//创建日期:2020/8/20 16:50
//描述:TODO

import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  List<String> _tag = ['iPhone', 'HUAWEI', 'ZTE', 'Lenovo','OPPO','VIVO','XIAOMI'];
  String _action = 'Nothing';
  List<String> _selected = [];
  String _choice = 'HUAWEI';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChipDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0), //设定一个全局填充
        child: Column(
          //设定一个线性布局
          mainAxisAlignment: MainAxisAlignment.center, //让部件垂直居中
          children: <Widget>[
            Wrap(
              runSpacing: 8.0, //增加行距
              spacing: 8.0, //增加间距
              children: <Widget>[
                Chip(label: Text('life')),
                Chip(
                  label: Text('sunset'),
                  backgroundColor: Colors.orange,
                ),
                Chip(
                  label: Text('Test'),
                  avatar: CircleAvatar(
                    //这个属性是在空间的左边增加一个圆形的标志
                    backgroundColor: Colors.grey,
                    child: Text('飞'),
                  ),
                ),
                Chip(
                  label: Text('Test'),
                  avatar: CircleAvatar(
                    //这个属性是在空间的左边增加一个圆形的标志
                    backgroundImage: NetworkImage(
                        'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1075042083,3547585218&fm=26&gp=0.jpg'),
                  ),
                ),
                Chip(
                  label: Text('City'),
                  onDeleted: () {},
                  //待删除功能的按钮
                  deleteIcon: Icon(Icons.delete),
                  deleteIconColor: Colors.red,
                  deleteButtonTooltipMessage: '删除这个标签',
                ),
                Divider(
                  height: 32.0,
                  indent: 32.0, //缩进
                  color: Colors.grey,
                ), //这是一个分隔符会显示成一条直线
                Wrap(
                  spacing: 8.0,
                  children: _tag.map(
                    (tag) {
                      return Chip(
                        label: Text(tag),
                        onDeleted: (){
                          setState(() {
                            _tag.remove(tag);
                          });
                        },
                      );
                    },
                  ).toList(),
                ) ,
                Divider(
                  height: 32.0,
                  indent: 32.0, //缩进
                  color: Colors.grey,
                ), //这是一个分隔符会显示成一条直线
                Container(width: double.infinity,child: Text('ActionChip:$_action'),),
                Wrap(
                  spacing: 8.0,
                  children: _tag.map(
                    (tag) {
                      return ActionChip(
                        label: Text(tag),
                        onPressed: (){
                          setState(() {
                            _action = tag;
                          });
                        },
                      );
                    },
                  ).toList(),
                ),
                Divider(
                  height: 32.0,
                  indent: 32.0, //缩进
                  color: Colors.grey,
                ), //这是一个分隔符会显示成一条直线
                Container(width: double.infinity,child: Text('FilterChip:${_selected.toString()}'),),
                Wrap(
                  spacing: 8.0,
                  children: _tag.map(
                    (tag) {
                      return FilterChip(
                        label: Text(tag),
                        selected: _selected.contains(tag),
                        onSelected: (value){
                          setState(() {
                            if (_selected.contains(tag)) {
                              _selected.remove(tag);
                            }  else{
                              _selected.add(tag);
                            }
                          });
                        },
                      );
                    },
                  ).toList(),
                ),
                Divider(
                  height: 32.0,
                  indent: 32.0, //缩进
                  color: Colors.grey,
                ), //这是一个分隔符会显示成一条直线
                Container(width: double.infinity,child: Text('ChoiceChip:${_choice}'),),
                Wrap(
                  spacing: 8.0,
                  children: _tag.map(
                    (tag) {
                      return ChoiceChip(
                        label: Text(tag),
                        selectedColor: Colors.red,
                        selected: _choice == tag,
                        onSelected: (value){
                          setState(() {
                            _choice = tag;
                          });
                        },
                      );
                    },
                  ).toList(),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: (){
          setState(() {
            _tag = ['iPhone', 'HUAWEI', 'ZTE', 'Lenovo','OPPO','VIVO','XIAOMI'];
            _selected = [];
            _choice = 'HUAWEI';
          });
        },
      ),
    );
  }
}
