import 'package:flutter/material.dart';

class Kontak extends StatefulWidget {
  Kontak({Key? key}) : super(key: key);

  @override
  State<Kontak> createState() => _KontakState();
}

class _KontakState extends State<Kontak> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text("Kontak"),
      ),
    );
  }
}
