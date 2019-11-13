import 'package:flutter/material.dart';

class NotesPage extends StatefulWidget {
  NotesPage({Key key, this.title}) : super(key: key);
  
  final String title;

  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {

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
              'You on the notes page bruhh.',
            )
          ],
        ),
      )
    );
  }
}
