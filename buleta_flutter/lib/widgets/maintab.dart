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
            Container(
              child: IconButton(
                icon: Icon(Icons.search),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  print('Search Button Clicked');
                },
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.blueGrey[300]),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: IconButton(
                icon: Icon(Icons.menu),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () => print('Menu Button Clicked'),
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.blueGrey[300]),
            ),
          ],
        ),
        body: SafeArea(
            child: Column(
          children: [
            const TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(text: 'Home'),
                  Tab(text: 'Artikel'),
                  Tab(text: 'Galeri'),
                  Tab(text: 'Agenda'),
                  // Tab(text: 'Profil')
                ])
          ],
        )),
      ),
    );
  }
}
