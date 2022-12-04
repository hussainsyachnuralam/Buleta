import 'package:flutter/material.dart';

class Galeri extends StatefulWidget {
  Galeri({Key? key}) : super(key: key);

  @override
  State<Galeri> createState() => _GaleriState();
}

class _GaleriState extends State<Galeri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text("Galeri"),
      ),
    );
  }
}
