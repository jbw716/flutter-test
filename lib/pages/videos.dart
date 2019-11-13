import 'package:flutter/material.dart';

class VideosPage extends StatefulWidget {
  VideosPage({Key key, this.title}) : super(key: key);
  
  final String title;

  @override
  _VideosPageState createState() => _VideosPageState();
}

class _VideosPageState extends State<VideosPage> {

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
              'You on the videos page bruhh.',
            )
          ],
        ),
      )
    );
  }
}
