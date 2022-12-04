import 'package:flutter/material.dart';

class Syarat extends StatefulWidget {
  Syarat({Key? key}) : super(key: key);

  @override
  State<Syarat> createState() => _SyaratState();
}

class _SyaratState extends State<Syarat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Syarat & Ketentuan'),
        backgroundColor: Colors.blueGrey,
      ),

      // child: Container(
      //   child: ListView.builder(
      //     itemCount: 6,
      //     itemBuilder: (context, i) {
      //       return Card(
      //         child: ListTile(
      //           title: Row(
      //             children: [
      //               Expanded(
      //                 child: Icon(Icons.book),
      //               ),
      //               Expanded(
      //                   child: Container(
      //                 child: Text("Artikel"),
      //               ))
      //             ],
      //           ),
      //         ),
      //       );
      //     },
      //   ),
      // ),
    );
  }
}
