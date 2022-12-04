import 'package:buleta_flutter/screens/artikeldetail.dart';
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
          title: Text('Artikel'),
          backgroundColor: Colors.blueGrey,
        ),
        body: Container(
          child: Container(
            margin: EdgeInsets.only(top: 8.0),
            child: ListView.builder(
                itemCount: 8,
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
                            child: Container(
                                margin:
                                    EdgeInsets.only(bottom: 10.0, left: 10.0),
                                child: Text("Post Title")),
                          )
                        ],
                      ),
                      subtitle: Container(
                        margin: EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          'One, two, three 지금부턴 다 surprise (Uh-huh) A to Z 너를 위한 이 순간 Just today 뭐든 해도 되니까 (Yeah) R to V 우릴 따라와 봐 (Come on) 들뜨는 기분에 완벽한 날씨까지 (Lets get lit) Feel so high, oh my gosh 전부 선물 같지Dumb, dumb (날뛰는 기분이야) 오늘 하룬 마치 diamonds (Diamonds)',
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ArtikelDetail(),
                          ),
                        );
                      },
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
