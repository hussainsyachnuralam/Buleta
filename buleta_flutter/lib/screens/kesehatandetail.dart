import 'package:flutter/material.dart';
import 'package:reading_time/reading_time.dart';

class KesehatanDetail extends StatelessWidget {
  final data;
  const KesehatanDetail({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Kesehatan'),
          backgroundColor: Colors.blueGrey,
        ),
        body: ListView(
          padding: EdgeInsets.all(8),
          children: <Widget>[
            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 10.0, left: 10.0),
                child: Text(
                  data['title']['rendered'],
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Image.network(
                data["_embedded"]["wp:featuredmedia"][0]["source_url"]),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                data['content']['rendered']
                    .toString()
                    .replaceAll("<p>", "")
                    .replaceAll("</p>", ""),
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
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

main(List<String> args) {
  var reader = readingTime('text');
  print(reader.words);
  print(reader.msg);
  print(reader.time);
  print(reader.minutes);
}
