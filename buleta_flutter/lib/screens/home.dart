import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Media Center Palangka Raya'),
          backgroundColor: Colors.blueGrey,
        ),
      ),
      debugShowCheckedModeBanner: false,
      // backgroundColor: Colors.white,
      // body: Center(
      //   child:
      //   Text("anjeerrr"),
      // ),
    );
  }
}
