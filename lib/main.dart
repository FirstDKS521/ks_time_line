import 'package:flutter/material.dart';
import 'package:ks_flutter_demo/ks_custom_appbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
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
  _buildItem(context, row) {
    String str = '打开房间爱看大家咖啡机撒可富打开房间爱看大家咖啡机撒可富打开房间爱看大家咖啡机撒可富打开房间爱看大家咖啡机撒可富打开房间爱看大家咖啡机撒可富';
    if (row % 2 == 0) {
      str = '打开房间爱看大家咖啡机撒可富打开房间爱看大家咖啡机撒可富打开房间爱看大家咖啡机撒可富打开房间爱看大家咖啡机撒可富';
    }

    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 50.0),
          child: Card(
            margin: EdgeInsets.fromLTRB(5, 0, 16, 10),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
              width: double.infinity,
              child: Text(str),
            ),
          ),
        ),
        Positioned(
          top: 0.0,
          bottom: 0.0,
          left: 35.0,
          child: Container(
            height: double.infinity,
            width: 2.0,
            color: Colors.blue,
          ),
        ),
        Positioned(
          top: 0,
          left: 22.5,
          child: Container(
            height: 26.0,
            width: 26.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.lightGreen,
            ),
            child: Container(
              margin: EdgeInsets.all(3.0),
              height: 26.0,
              width: 26.0,
              decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.red),
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KSCustomAppbar(
        backgroundColor: Colors.green,
        title: '测试',
      ),
      body: ListView.builder(
        itemBuilder: (context, row) {
          return _buildItem(context, row);
        },
        itemCount: 30,
      )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
