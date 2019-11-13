import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  AboutPage({Key key, this.title}) : super(key: key);
  
  final String title;

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You on the about page bruhh.',
            )
          ],
        ),
      )
    );
  }
}
