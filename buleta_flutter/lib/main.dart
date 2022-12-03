import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Media Center Palangka Raya',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Text("Page"),
      debugShowCheckedModeBanner: false,
    );
  }
}
