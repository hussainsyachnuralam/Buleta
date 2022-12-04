import 'package:buleta_flutter/screens/artikel.dart';
import 'package:buleta_flutter/screens/galeri.dart';
import 'package:buleta_flutter/screens/home.dart';
import 'package:buleta_flutter/screens/kontak.dart';
import 'package:buleta_flutter/widgets/navbar.dart';
import 'package:get/get.dart';

class AppPage {
  static List<GetPage> routes = [
    GetPage(name: navbar, page: () => NavBAr()),
    GetPage(name: home, page: () => Home()),
    GetPage(name: artikel, page: () => Artikel()),
    GetPage(name: galeri, page: () => Galeri()),
    GetPage(name: kontak, page: () => Kontak()),
  ];

  static getnavbar() => navbar;
  static gethome() => home;
  static getartikel() => artikel;
  static getgaleri() => galeri;
  static getkontak() => kontak;
  //
  static String navbar = '/';
  static String home = '/home';
  static String artikel = '/artikel';
  static String galeri = '/galeri';
  static String kontak = '/kontak';
}
