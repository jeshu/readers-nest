import 'package:flutter/material.dart';

void main() {
  runApp(ReadersNest());
}

class ReadersNest extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(title: 'Readers nest'),
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
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade800,
        title: Text(
          widget.title,
          style: TextStyle(
            fontSize: 25,
            fontFamily: 'Redressed'
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/profile.jpg'),
            ),
            Text(
              'Jeshu Brij',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Redressed',
              ),
            ),
            Text('Fullstack Developer',
            style: TextStyle(
              fontSize: 20,
              color: Colors.blueGrey.shade100,
              fontWeight: FontWeight.bold,
              fontFamily: 'UbuntuMono',
              letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 20,
              width:150,
              child: Divider(
                color: Colors.blueGrey.shade200,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 25,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color:Colors.blueGrey,
                ),
                title: Text(
                  '+919871746836',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.blueGrey,
                      fontFamily: 'UbuntuMono'
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 25,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.email_outlined,
                  color:Colors.blueGrey,
                ),
                title: Text(
                  'jeshu911@gmail.com',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.blueGrey,
                      fontFamily: 'UbuntuMono'
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
                child: Text(
                  'Readers Nest',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Redressed',
                    color: Colors.white,
                  ),
                ),
            ),
          ],
        )
      ),
    );
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
}
