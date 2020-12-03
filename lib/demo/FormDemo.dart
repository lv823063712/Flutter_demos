import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FromDemo'),
        elevation: 0.0,
      ),
      body: Theme(
          data: Theme.of(context).copyWith(primaryColor: Colors.black),
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[RegisterForm()],
            ),
          )),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  TextFieldDemoState createState() => TextFieldDemoState();
}

class TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose(); //类似于消除弹窗的dismiss   但是在这里是进行释放资源
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
//    textEditingController.text = 'hi';
    textEditingController.addListener(() {
      debugPrint('input: ${textEditingController.text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      /*onChanged: (value){
        debugPrint('输入了${value}');
      },*/
      onSubmitted: (value) {
        debugPrint('点击确定按钮后输入了${value}');
      },
      decoration: InputDecoration(
          icon: Icon(Icons.subject),
          labelText: 'Title',
          hintText: '请输入标题',
//        border: InputBorder.none,
//        border: OutlineInputBorder()
          filled: true),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final registerFromKey = GlobalKey<FormState>();
  String userName, password;
  bool autovalidate = false;//用来判断是否自动打开表单的验证功能

  String validateUserName(value) {
    if (value.isEmpty) {
      return '用户名不能为空';
    }
    return null;
  }
  String validatePassWord(value) {
    if (value.isEmpty) {
      return '密码不能为空';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: registerFromKey,
        child: Column(//相当于线性布局
          children: <Widget>[
            TextFormField(
              decoration://账户提示名
                  InputDecoration(labelText: "UserName", helperText: ''),
              onSaved: (value) {
                userName = value;
              },
              validator: validateUserName,
              autovalidate: autovalidate,
            ),
            TextFormField(//这个是使用输入款控件
              obscureText: true, //输入密码时候为true显示小圆点
              decoration://下面是密码提示名
                  InputDecoration(labelText: "PassWord", helperText: ''),
              onSaved: (value) {
                password = value;
              },
              validator: validatePassWord,
              autovalidate: autovalidate,
            ),
            SizedBox(//使用sizeBox增加一些间距
              height: 32.0,
            ),
            Container(
              width: double.infinity,
              child: RaisedButton(//注册按钮
                color: Theme.of(context).accentColor,//设定注册按钮的主题色
                child: Text(
                  '注册',
                  style: TextStyle(color: Colors.white),
                ),
                elevation: 0.0,
                onPressed: submitRegisterForm,//事件回调方法
              ),
            )
          ],
        ));
  }
  //表单提交方法
  void submitRegisterForm() {
    if (registerFromKey.currentState.validate()) {
      registerFromKey.currentState.save(); //保存from表单里面保存的数据
      debugPrint('username: ${userName}');
      debugPrint('password: ${password}');
      Scaffold.of(context).showSnackBar(
        SnackBar(content: Text('注册中...'),)
      );
    }else{
     setState(() {
       autovalidate = true;
     });
    }
  }
}
//定义主题
class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}
