import 'package:buleta_flutter/controller/controller.dart';
import 'package:buleta_flutter/screens/agenda.dart';
import 'package:buleta_flutter/screens/artikel.dart';
import 'package:buleta_flutter/screens/galeri.dart';
import 'package:buleta_flutter/screens/home.dart';
import 'package:buleta_flutter/screens/kontak.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class NavBAr extends StatefulWidget {
  NavBAr({Key? key}) : super(key: key);

  @override
  State<NavBAr> createState() => _NavBArState();
}

class _NavBArState extends State<NavBAr> {
  final controller = Get.put(Navbarcontroller());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<Navbarcontroller>(
      builder: (context) {
        return Scaffold(
          body: IndexedStack(
            index: controller.tabIndex,
            children: [
              Artikel(),
              Galeri(),
              Agenda(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: Colors.black,
              unselectedItemColor: Color.fromARGB(98, 96, 125, 139),
              currentIndex: controller.tabIndex,
              onTap: controller.changeTabIndex,
              items: [
                // _bottombarItem(IconlyBold.home, "Home"),
                _bottombarItem(IconlyBold.paper, "Artikel"),
                _bottombarItem(IconlyBold.chart, "Kategori"),
                _bottombarItem(IconlyBold.calendar, "Agenda"),
              ]),
        );
      },
    );
  }
}

_bottombarItem(IconData icon, String label) {
  return BottomNavigationBarItem(icon: Icon(icon), label: label);
}
