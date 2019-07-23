import 'package:flutter/material.dart';
import 'package:projeto_referencia/src/colors.dart';

import '../menu-drawer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _HomePageSate createState() => _HomePageSate();
}

class _HomePageSate extends State<HomePage> {
  int _counter = 02;

  GlobalKey<ScaffoldState> scaffoldStateKey = new GlobalKey<ScaffoldState>();

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
      if (_counter.abs() > 10) {
        this.scaffoldStateKey.currentState.showSnackBar(
            SnackBar(
                content: Text("Eita, você apertou o botão mais de 10 vezes"),
              behavior: SnackBarBehavior.floating,
            )
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      key: scaffoldStateKey,
      drawer: buildAppDrawer(context),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Você apertou este botão esta quantidade de vezes' ,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display4,
            ),
          ],
        ),
      ),
      bottomNavigationBar:  BottomAppBar(
          shape: CircularNotchedRectangle(),
        notchMargin: 4.0,
        color: appCustomColor,
        child: SizedBox(
            height: 60.0,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  color: Colors.white,
                  onPressed: () {},
                ),
                IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.web_asset),
                  onPressed: () {
                    Navigator.pushNamed(context, "/sobre");
                  },
                )
              ],
            )
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(

        elevation: 1,
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
        foregroundColor: Colors.white,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
