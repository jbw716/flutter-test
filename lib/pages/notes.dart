import 'package:flutter/material.dart';

class NotesPage extends StatefulWidget {
  NotesPage({Key key, this.title}) : super(key: key);
  
  final String title;

  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {

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
              'You on the notes page bruhh.',
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
