import 'package:flutter/material.dart';

class MainTab extends StatefulWidget {
  MainTab({Key? key}) : super(key: key);

  @override
  State<MainTab> createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final List<Tab> topTabs = <Tab>[
    Tab(child: Text("Artikel")),
    Tab(child: Text("Berita")),
    Tab(child: Text("Agenda")),
    Tab(child: Text("Berita Foto")),
    Tab(child: Text("Berita")),
    Tab(child: Text("Profil")),
  ];

  @override
  void initState() {
    _tabController =
        TabController(length: topTabs.length, initialIndex: 0, vsync: this)
          ..addListener(() {
            setState(() {});
          });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.black,
            tabs: topTabs,
          ),
        ),
      ),
    );
  }
}
