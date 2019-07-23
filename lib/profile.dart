import 'package:flutter/material.dart';

class ProfileStackPage extends StatelessWidget {
  const ProfileStackPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Beispiel'),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/forest.jpg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
