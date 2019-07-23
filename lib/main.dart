import 'package:flutter/material.dart';
import 'package:stack/profile.dart';
import 'package:stack/stack.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Stack Beispiele'),
    );
  }

  openStackPage(context) {
    Navigator.push(
      context,
      new MaterialPageRoute(
        builder: (BuildContext context) => new StackPage(),
      ),
    );
  }

  openProfileStackPage(context) {
    Navigator.push(
      context,
      new MaterialPageRoute(
        builder: (BuildContext context) => new ProfileStackPage(),
      ),
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
            RaisedButton(
              onPressed: () => MyApp().openStackPage(context),
            ),
            RaisedButton(
              onPressed: () => MyApp().openProfileStackPage(context),
            ),
          ],
        ),
      ),
    );
  }
}
