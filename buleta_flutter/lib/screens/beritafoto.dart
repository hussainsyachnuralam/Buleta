import 'package:flutter/material.dart';

class BeritaFoto extends StatefulWidget {
  BeritaFoto({Key? key}) : super(key: key);

  @override
  State<BeritaFoto> createState() => _BeritaFotoState();
}

class _BeritaFotoState extends State<BeritaFoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Berita Foto'),
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
