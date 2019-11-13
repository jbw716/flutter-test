import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  NewsPage({Key key, this.title}) : super(key: key);
  
  final String title;

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {

  int presses = 0;

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
            ),
            Text(
              'You pressed the button this many times:',
            ),
            Text(
              presses.toString(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => presses++),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), 
    );
  }
}
