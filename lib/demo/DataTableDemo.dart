//文件名: DataTableDemo
//创建者:Lv Fei
//创建日期:2020/8/21 14:11
//描述:TODO
import 'package:flutter/material.dart';
import 'package:flutter_appsss/moudle/post.dart';

class DataTableDemo extends StatefulWidget {
  @override
  _DataTableDemoState createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
  int _sortColumnIndex; //排序的索引
  bool _sortAscending = true; //排序的方式
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataTableDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0), //设定一个全局填充
        child: ListView(
          //设定一个线性布局
          children: <Widget>[
            DataTable(
              sortColumnIndex: _sortColumnIndex, //找找索引号来进行排序
              sortAscending: _sortAscending, //使用true 是按照升序排列,使用false是按照降序排列
//              onSelectAll: (bool value){},//这个参数用来定制全选的动作
              columns: [
                DataColumn(
                    label: Text('预约'),
                    onSort: (int index, bool ascending) {
                      setState(() {
                        _sortColumnIndex = index;
                        _sortAscending = ascending;

                        posts.sort((a, b) {
                          if (!ascending) {
                            final c = a;
                            a = b;
                            b = c;
                          }
                          return a.title.length
                              .compareTo(b.title.length); //这里是按照标题的长短进行排序
                        });
                      });
                    }),
                DataColumn(label: Text('患者')),
                DataColumn(label: Text('头像')),
              ],
              rows: posts.map(
                (post) {
                  return DataRow(
                    selected: post.selected,
                    onSelectChanged: (bool value) {
                      setState(() {
                        if (post.selected != value) {
                          post.selected = value;
                        }
                      });
                    },
                    cells: [
                      DataCell(Text(post.title)),
                      DataCell(Text(post.author)),
                      DataCell(Image.network(post.imageUrl)),
                    ],
                  );
                },
              ).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
