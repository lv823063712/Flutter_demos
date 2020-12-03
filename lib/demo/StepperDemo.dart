//文件名: StepperDemo
//创建者:Lv Fei
//创建日期:2020/8/24 11:02
//描述:TODO

import 'package:flutter/material.dart';

class StepperDemo extends StatefulWidget {
  @override
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StepperDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0), //设定一个全局填充
        child: Column(
          //设定一个线性布局
          mainAxisAlignment: MainAxisAlignment.center, //让部件垂直居中
          children: <Widget>[
            Theme(
              data: Theme.of(context).copyWith(primaryColor: Colors.black),
              child: Stepper(
                currentStep: _currentStep,
                onStepTapped: (int value) { //这个属性是点按序列号进行的
                  setState(() {
                    _currentStep = value;
                  });
                },
                onStepContinue: () {//这个属性是点击继续,下一步的回调
                  setState(() {
                    _currentStep < 2 ? _currentStep += 1 : _currentStep = 0;
                  });
                },
                onStepCancel: (){
                  setState(() {
                    _currentStep>0 ?_currentStep -=1 :_currentStep = 0;
                  });
                },
                steps: [
                  Step(
                    title: Text('登录'),
                    subtitle: Text('Login First'),
                    content: Text('快速登录,一刀9999'),
                    isActive: _currentStep == 0,
                  ),
                  Step(
                    title: Text('注册'),
                    subtitle: Text('Login First'),
                    content: Text('注册就送顶级屠龙刀'),
                    isActive: _currentStep == 1,
                  ),
                  Step(
                    title: Text('送礼包'),
                    subtitle: Text('Login First'),
                    content: Text('赠送8888大礼包'),
                    isActive: _currentStep == 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
