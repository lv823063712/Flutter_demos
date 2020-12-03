//这里是设置一个漂浮按钮
import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //漂浮按钮
    final Widget _floatingActionButton = FloatingActionButton(
      child: Icon(Icons.add),
      elevation: 0.0,
      //这属性代表着贴合,会取消阴影效果如果为0的时候
      backgroundColor: Colors.black87,
      /*shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(30.0) //这个改变圆角,不会像圆靠近,会变得有棱有角
          ),*/
      onPressed: () {},
    );

    final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
      onPressed: () {},
      icon: Icon(Icons.add),
      label: Text('Add'),
      elevation: 0.0,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
      ),
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80.0, //这里可以控制漂浮按钮的显示高度
        ),
        shape: CircularNotchedRectangle(), //使用这个属性可以再导航出做出一个切口
      ),
    );
  }
}