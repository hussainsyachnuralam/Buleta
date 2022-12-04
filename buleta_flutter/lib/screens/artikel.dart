import 'package:flutter/material.dart';

class Artikel extends StatefulWidget {
  Artikel({Key? key}) : super(key: key);

  @override
  State<Artikel> createState() => _ArtikelState();
}

class _ArtikelState extends State<Artikel> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profil Media Center'),
          backgroundColor: Colors.blueGrey,
        ),
        body: Container(
          child: Container(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, i) {
                  return Card(
                    child: ListTile(
                      title: Row(
                        children: [
                          Expanded(
                            child: Image.network(
                                "https://media.suara.com/pictures/970x544/2022/08/16/32338-danielle-newjeans-instagramcomnewjeans-official.jpg"),
                          ),
                          Expanded(
                            child: Container(child: Text("Post Title")),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,

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
