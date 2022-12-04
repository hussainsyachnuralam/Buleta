import 'package:buleta_flutter/screens/agenda.dart';
import 'package:buleta_flutter/screens/artikel.dart';
import 'package:buleta_flutter/screens/beritafoto.dart';
import 'package:buleta_flutter/screens/profil.dart';
import 'package:buleta_flutter/screens/syaratketentuan.dart';
import 'package:buleta_flutter/screens/tentang.dart';
import 'package:flutter/material.dart';
import '';

class MainTab extends StatelessWidget {
  const MainTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Media Center Palangka Raya',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          actions: [
            // Container(
            //   child: IconButton(
            //     icon: Icon(Icons.search),
            //     splashColor: Colors.transparent,
            //     highlightColor: Colors.transparent,
            //     onPressed: () {
            //       print('Search Button Clicked');
            //     },
            //   ),
            //   decoration: BoxDecoration(
            //       shape: BoxShape.circle, color: Colors.blueGrey[300]),
            // ),
            Container(
                // margin: EdgeInsets.symmetric(horizontal: 10.0),
                // child: IconButton(
                //   icon: Icon(Icons.menu),
                //   splashColor: Colors.transparent,
                //   highlightColor: Colors.transparent,
                //   onPressed: () => print('Menu Button Clicked'),
                // ),
                // decoration: BoxDecoration(
                //     shape: BoxShape.circle, color: Colors.blueGrey[300]),
                ),
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
        // bottomNavigationBar: menu(),
        // body: SafeArea(
        //     child: Column(
        //   children: [
        //     const TabBar(
        //         labelColor: Colors.black,
        //         unselectedLabelColor: Colors.grey,
        //         tabs: [
        //           Tab(text: 'Home'),
        //           Tab(text: 'Artikel'),
        //           Tab(text: 'Galeri'),
        //           Tab(text: 'Agenda'),
        //           // Tab(text: 'Profil')
        //         ]),

        //         Expanded(child: child,)
        //   ],
        // )),
      ),
    );
  }
}

class Navbar extends StatefulWidget {
  Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

// Widget menu() {
//   return Container(
//     color: Colors.blueGrey,
//     child: TabBar(
//       labelColor: Colors.white,
//       unselectedLabelColor: Color.fromARGB(73, 255, 255, 255),
//       indicatorSize: TabBarIndicatorSize.tab,
//       indicatorPadding: EdgeInsets.all(5.0),
//       indicatorColor: Colors.black,
//       // isScrollable: true,
//       tabs: [
//         Tab(
//           text: "Home",
//           icon: Icon(Icons.home),
//         ),
//         Tab(
//           text: "Artikel",
//           icon: Icon(Icons.newspaper),
//         ),
//         Tab(
//           text: "Galeri",
//           icon: Icon(Icons.photo),
//         ),
//         Tab(
//           text: "Kontak",
//           icon: Icon(Icons.contact_phone),
//         ),
//       ],
//     ),
//   );
// }
