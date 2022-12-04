import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
                title: Text("Profil"),
                onTap: () {},
              ),
              ListTile(
                title: Text("Agenda"),
                onTap: () {},
              ),
              ListTile(
                title: Text("Berita Foto"),
                onTap: () {},
              ),
              ListTile(
                title: Text("Syarat & Ketentuan"),
                onTap: () {},
              ),
              ListTile(
                title: Text("Tentang Aplikasi"),
                onTap: () {},
              ),
            ],
          ),
        ),
        bottomNavigationBar: menu(),
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

Widget menu() {
  return Container(
    color: Colors.blueGrey,
    child: TabBar(
      labelColor: Colors.white,
      unselectedLabelColor: Color.fromARGB(73, 255, 255, 255),
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorPadding: EdgeInsets.all(5.0),
      indicatorColor: Colors.black,
      // isScrollable: true,
      tabs: [
        Tab(
          text: "Home",
          icon: Icon(Icons.home),
        ),
        Tab(
          text: "Artikel",
          icon: Icon(Icons.newspaper),
        ),
        Tab(
          text: "Galeri",
          icon: Icon(Icons.photo),
        ),
        Tab(
          text: "Kontak",
          icon: Icon(Icons.contact_phone),
        ),
      ],
    ),
  );
}
