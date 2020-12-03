//文件名: PageinatedDataTableDemo
//创建者:Lv Fei
//创建日期:2020/8/21 15:37
//描述:TODO

import 'package:flutter/material.dart';
import 'package:flutter_appsss/moudle/post.dart';

class PageinatedDataTableDemo extends StatefulWidget {
  @override
  _PageinatedDataTableDemoState createState() =>
      _PageinatedDataTableDemoState();
}

class _PageinatedDataTableDemoState extends State<PageinatedDataTableDemo> {
  int _sortColumnIndex; //排序的索引
  bool _sortAscending = true; //排序的方式

  final PostDataSource _postDataSource = PostDataSource();

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
            PaginatedDataTable(
              header: Text('Posts'),
              rowsPerPage: 5,
              source: _postDataSource,
              sortColumnIndex: _sortColumnIndex,
              //找找索引号来进行排序
              sortAscending: _sortAscending,
              //使用true 是按照升序排列,使用false是按照降序排列
//              onSelectAll: (bool value){},//这个参数用来定制全选的动作
              columns: [
                DataColumn(
                    label: Text('预约'),
                    onSort: (int columnIndex, bool ascending) {
                      _postDataSource._sort(
                          (post) => post.title.length, ascending);
                      setState(() {
                        _sortColumnIndex = columnIndex;
                        _sortAscending = ascending;
                      });
                    }),
                DataColumn(label: Text('患者')),
                DataColumn(label: Text('头像')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PostDataSource extends DataTableSource {
  final List<Post> _posts = posts;
  final _selectedCount = 0;

  @override
  bool get isRowCountApproximate => false;
  @override
  int get rowCount => _posts.length;
  @override
  int get selectedRowCount => _selectedCount;
  @override
  DataRow getRow(int index) {
    final Post post = _posts[index];
    // TODO: implement getRow
    return DataRow.byIndex(index: index, cells: <DataCell>[
      DataCell(Text(post.title)),
      DataCell(Text(post.author)),
      DataCell(Image.network(
        post.imageUrl,
        fit: BoxFit.cover,
      )),
    ]);
  }

  void _sort(getField(post), bool ascending) {
    _posts.sort((a, b) {
      if (!ascending) {
        final c = a;
        a = b;
        b = c;
      }
      final aValue = getField(a);
      final bValue = getField(b);
      return Comparable.compare(aValue, bValue);
    });
    notifyListeners(); //上述排序完成以后需要执行刷新列表
  }
}
