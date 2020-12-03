import 'package:flutter/material.dart';

class DataTimeDemo extends StatefulWidget {
  @override
  _DataTimeDemoState createState() => _DataTimeDemoState();
}

class _DataTimeDemoState extends State<DataTimeDemo> {
  DateTime selectedData = DateTime.now(); //设定时间等于现在
  TimeOfDay selectedTime = TimeOfDay(hour: 9, minute: 00);

  _selectDate() async {
    final DateTime selectDate = await showDatePicker(
        context: context,
        initialDate: selectedData,
        firstDate: DateTime(1900),
        lastDate: DateTime(2100));
    if (selectDate == null) {
      return;
    }
    setState(() {
      selectedData = selectDate;
    });
  }

  _selectTime() async {
    final TimeOfDay time =
        await showTimePicker(context: context, initialTime: selectedTime);
    if (time == null) {
      return;
    }
    setState(() {
      selectedTime = time;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DateTimeDemo'),
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
              children: <Widget>[
                InkWell(
                  onTap: _selectDate,
                  child: Row(
                    children: <Widget>[
                      //Text(DateFormat.yMMMMd().format(selectedData)),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                ),
                InkWell(
                  onTap: _selectTime,
                  child: Row(
                    children: <Widget>[
                      Text(selectedTime.format(context)),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
