import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: WebShow(),
    );
  }
}

class WebShow extends StatefulWidget {
  @override
  _WebShowState createState() => _WebShowState();
}

class _WebShowState extends State<WebShow> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Theme(
        data: ThemeData(
          brightness: Brightness.dark,
        ),
        child: Scaffold(
          bottomNavigationBar: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.home),
                text: "home",
              ),
              Tab(
                icon: Icon(Icons.search),
                text: "Search",
              ),
              Tab(
                icon: Icon(Icons.file_download),
                text: "Downloads",
              ),
              Tab(
                icon: Icon(Icons.list),
                text: "More",
              ),
            ],
            unselectedLabelColor: Color(0xff999999),
            labelColor: Colors.white,
            indicatorColor: Colors.transparent,
          ),
          body: TabBarView(
            children: <Widget>[
              HomePage(),
              Center(
                child: Text("Screen 2"),
              ),
              Center(
                child: Text("Screen 3"),
              ),
              Center(
                child: Text("Screen 4"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
