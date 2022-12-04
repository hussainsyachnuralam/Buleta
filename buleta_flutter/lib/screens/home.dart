import 'package:buleta_flutter/screens/artikel.dart';
import 'package:buleta_flutter/screens/profil.dart';
import 'package:buleta_flutter/screens/syaratketentuan.dart';
import 'package:buleta_flutter/screens/tentang.dart';
import 'package:flutter/material.dart';

import 'beritafoto.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text(
            'Media Center Palangka Raya',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          actions: [
            Container(),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Profil Media Center"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profil()));
                },
              ),
              ListTile(
                leading: Icon(Icons.view_agenda),
                title: Text("Agenda"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Artikel()));
                },
              ),
              ListTile(
                leading: Icon(Icons.art_track),
                title: Text("Berita Foto"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BeritaFoto()));
                },
              ),
              const Divider(
                color: Colors.black45,
              ),
              ListTile(
                leading: Icon(Icons.ballot),
                title: Text("Syarat & Ketentuan"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Syarat()));
                },
              ),
              ListTile(
                leading: Icon(Icons.book),
                title: Text("Tentang Aplikasi"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Tentang()));
                },
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
    //   debugShowCheckedModeBanner: false,
    //   // backgroundColor: Colors.white,
    //   // body: Center(
    //   //   child:
    //   //   Text("anjeerrr"),
    //   // ),
    // );
  }
}
