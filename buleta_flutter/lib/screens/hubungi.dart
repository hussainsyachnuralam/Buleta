import 'package:flutter/material.dart';

class Hubungi extends StatefulWidget {
  Hubungi({Key? key}) : super(key: key);

  @override
  State<Hubungi> createState() => _HubungiState();
}

class _HubungiState extends State<Hubungi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hubungi Kami'),
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
