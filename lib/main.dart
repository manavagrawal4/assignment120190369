import 'package:flutter/material.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sample'),
      ),
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          rectangleContainer(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                squareCont(),
                squareCont(),
                squareCont(),
              ],
            ),
          ),
          rectangleContainer(),
          rectangleContainer(),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      squareCont(),
                      squareCont(),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.all(20),
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Expanded rectangleContainer() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(20),
        color: Colors.grey,
      ),
    );
  }

  Flexible squareCont() {
    return Flexible(
      flex: 1,
      child: Container(
        margin: EdgeInsets.all(20),
        color: Colors.grey,
      ),
    );
  }
}
