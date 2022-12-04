import 'package:flutter/material.dart';

class Gambar extends StatelessWidget {
  const Gambar({Key? key, required this.img}) : super(key: key);

  final String img;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Image.asset(img),
      ),
    );
  }
}
