import 'package:flutter/material.dart';
import './pages/home.dart';
import './pages/news.dart';
import './pages/about.dart';
import './pages/videos.dart';
import './pages/notes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Test App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
        primaryColor: Color(0xFF800000),
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _currentIndex = 0;

  final List<Widget> _children = [
    HomePage(title: 'Home'),
    NewsPage(title: 'News'),
    NotesPage(title: 'Notes'),
    VideosPage(title: 'Videos'),
    AboutPage(title: 'About'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.library_books), title: Text('News')),
          BottomNavigationBarItem(icon: Icon(Icons.note), title: Text('Notes')),
          BottomNavigationBarItem(icon: Icon(Icons.video_library), title: Text('Videos')),
          BottomNavigationBarItem(icon: Icon(Icons.info_outline), title: Text('About')),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) => setState(() => _currentIndex = index),
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
