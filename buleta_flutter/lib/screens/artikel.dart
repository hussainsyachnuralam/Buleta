import 'package:buleta_flutter/screens/artikeldetail.dart';
import 'package:buleta_flutter/services/post.dart';
import 'package:flutter/material.dart';

class Artikel extends StatefulWidget {
  Artikel({Key? key}) : super(key: key);

  @override
  State<Artikel> createState() => _ArtikelState();
}

class _ArtikelState extends State<Artikel> {
  Post postService = Post();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Artikel'),
          backgroundColor: Colors.blueGrey,
        ),
        body: Container(
          child: Container(
            margin: EdgeInsets.only(top: 8.0),
            child: FutureBuilder<List>(
              future: postService.getAllPost(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  if (snapshot.data?.length == 0) {
                    return Center(
                      child: Text("0 post"),
                    );
                  }
                  return ListView.builder(
                      itemCount: snapshot.data?.length,
                      itemBuilder: (context, i) {
                        return Card(
                          child: ListTile(
                            title: Row(
                              children: [
                                Expanded(
                                  child: Image.network(snapshot.data![i]
                                          ["_embedded"]["wp:featuredmedia"][0]
                                      ["source_url"]),
                                ),
                                Expanded(
                                  child: Container(
                                      margin: EdgeInsets.only(
                                          bottom: 10.0, left: 10.0),
                                      child: Text(
                                        snapshot.data![i]['title']['rendered'],
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold),
                                      )),
                                )
                              ],
                            ),
                            subtitle: Container(
                              margin: EdgeInsets.only(bottom: 10.0),
                              child: Text(
                                snapshot.data![i]['content']['rendered']
                                    .toString()
                                    .replaceAll("<p>", "")
                                    .replaceAll("</p>", ""),
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      ArtikelDetail(data: snapshot.data?[i]),
                                ),
                              );
                            },
                          ),
                        );
                      });
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text(snapshot.error.toString()),
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
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
