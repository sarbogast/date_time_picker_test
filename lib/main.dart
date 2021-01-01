import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _date;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DateTimePicker(
              initialValue: '',
              firstDate: DateTime(1900),
              lastDate: DateTime.now().subtract(
                Duration(
                  days: (365.25 * 13).toInt(),
                ),
              ),
              /*initialDate: DateTime.now().subtract(
                Duration(
                  days: (365.25 * 18).toInt(),
                ),
              ),*/
              onChanged: (value) {
                setState(() {
                  _date = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
