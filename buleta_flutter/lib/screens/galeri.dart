import 'package:flutter/material.dart';

class Galeri extends StatefulWidget {
  Galeri({Key? key}) : super(key: key);

  @override
  State<Galeri> createState() => _GaleriState();
}

class _GaleriState extends State<Galeri> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text("Galeri"),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class GambarPage extends StatefulWidget {
  GambarPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<GambarPage> createState() => _GambarPageState();
}

class _GambarPageState extends State<GambarPage> {
  List<String> values = [];
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
