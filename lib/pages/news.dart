import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  NewsPage({Key key, this.title}) : super(key: key);
  
  final String title;

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {

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
              'You on the news page bruhh.',
            )
          ],
        ),
      )
    );
  }
}
