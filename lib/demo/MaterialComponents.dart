import 'package:flutter/material.dart';
import 'package:flutter_appsss/demo/AlertDialogDemo.dart';
import 'package:flutter_appsss/demo/BottomSheetDemo.dart';
import 'package:flutter_appsss/demo/CardDemo.dart';
import 'package:flutter_appsss/demo/ChipDemo.dart';
import 'package:flutter_appsss/demo/DataTableDemo.dart';
import 'package:flutter_appsss/demo/ExpansionPanelDemo.dart';
import 'package:flutter_appsss/demo/FormDemo.dart';
import 'package:flutter_appsss/demo/PopupMenuButtonDemo.dart';
import 'package:flutter_appsss/demo/RadioDemo.dart';
import 'package:flutter_appsss/demo/SimpleDialogDemo.dart';
import 'package:flutter_appsss/demo/SliderDemo.dart';
import 'package:flutter_appsss/demo/SnackBarDemo.dart';
import 'package:flutter_appsss/demo/SwitchDemo.dart';

import 'ButtonDemo.dart';
import 'CheckboxDemo.dart';
import 'DataTimeDemo.dart';
import 'FloatingActionButtonDemo.dart';
import 'PageinatedDataTableDemo.dart';
import 'StepperDemo.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
        elevation: 0.5, //从来控制APPBAr的高度
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title: 'Stepper', page: StepperDemo()),
          ListItem(title: 'Card', page: CardDemo()),
          ListItem(
              title: 'PageinatedDataTable', page: PageinatedDataTableDemo()),
          ListItem(title: 'DataTable', page: DataTableDemo()),
          ListItem(title: 'Chip', page: ChipDemo()),
          ListItem(title: 'ExpansionPanel', page: ExpansionPanelDemo()),
          ListItem(title: 'SnackBar', page: SnackBarDemo()),
          ListItem(title: 'BottomSheet', page: BottomSheetDemo()),
          ListItem(title: 'AlertDialog', page: AlertDialogDemo()),
          ListItem(title: 'SimpleDialog', page: SimpleDialogDemo()),
          ListItem(title: 'DataTime', page: DataTimeDemo()),
          ListItem(title: 'SliderValue', page: SliderDemo()),
          ListItem(title: 'SwitchDemo', page: SwitchDemo()),
          ListItem(title: 'RadioDemo', page: RadioDemo()),
          ListItem(title: 'Checkbox', page: CheckboxDemo()),
          ListItem(title: 'Form', page: FormDemo()),
          ListItem(
              title: 'FloatingActionButton', page: FloatingActionButtonDemo()),
          ListItem(title: 'PopupMenuButton', page: PopupMenuButtonDemo()),
          ListItem(
            title: 'ButtonDemo',
            page: ButtonDemo(),
          ),
        ],
      ),
    );
  }
}

class _WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_WidgetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0), //设定一个全局填充
        child: Column(
          //设定一个线性布局
          mainAxisAlignment: MainAxisAlignment.center, //让部件垂直居中
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center, //设定部件水平居中
              children: <Widget>[],
            ),
          ],
        ),
      ),
    );
  }
}

//这是按钮列表
class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  const ListItem({Key key, this.title, this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context)
            //跳转到对应的小部件
            .push(MaterialPageRoute(builder: (context) => page));
      },
    );
  }
}
