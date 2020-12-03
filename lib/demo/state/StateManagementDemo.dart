//文件名: StateManagementDemo
//创建者:Lv Fei
//创建日期:2020/8/24 11:35
//描述:TODO

import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class StateManagementDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel(
        model: CounterModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('StateManagementDemo'),
            elevation: 0.0,
          ),
          body: CounterWrapper(),
          floatingActionButton: ScopedModelDescendant<CounterModel>(
            rebuildOnChange: false, //设置为false,即使值有变化也不会进行重构部件
            builder: (context, _, model) => FloatingActionButton(
              onPressed: model.increaseCount,
              child: Icon(Icons.add),
            ),
          ),
        ));
  }
}

class CounterWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Counter(),
    );
  }
}

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<CounterModel>(
      builder: (context, _, model) => ActionChip(
        label: Text('${model.count}'),
        onPressed: model.increaseCount,
      ),
    );
  }
}

//下面这个自定义部件是为了免除一层一层的传递数据
class CounterProvider extends InheritedWidget {
  final int count;
  final VoidCallback increaseCount;
  final Widget child;

  //定义三个参数,京进行处理
  CounterProvider({this.count, this.increaseCount, this.child})
      : super(child: child);

  //添加一个静态方法 用来获取provider
  static CounterProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterProvider>();
  }

  //决定是否通知继承了这个小部件的小部件
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}

class CounterModel extends Model {
  int _count = 0;

  int get count => _count;

  void increaseCount() {
    _count += 1;
    notifyListeners(); //这个方法可以用来刷新部件
  }
}
