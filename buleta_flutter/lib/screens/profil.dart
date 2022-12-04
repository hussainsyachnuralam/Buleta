import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profil Media Center'),
          backgroundColor: Colors.blueGrey,
        ),
        body: ListView(
          padding: EdgeInsets.all(8),
          children: <Widget>[
            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 10.0, left: 10.0),
                child: Text(
                  "Profil Media Center",
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Image.asset("assets/baliho.jpg"),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                "One, two, three 지금부턴 다 surprise (Uh-huh) A to Z 너를 위한 이 순간 Just today 뭐든 해도 되니까 (Yeah) R to V 우릴 따라와 봐 (Come on) 들뜨는 기분에 완벽한 날씨까지 (Lets get lit) Feel so high, oh my gosh 전부 선물 같지Dumb, dumb (날뛰는 기분이야) 오늘 하룬 마치 diamonds (Diamonds)",
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
