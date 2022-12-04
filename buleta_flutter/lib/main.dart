import 'package:buleta_flutter/screens/home.dart';
import 'package:buleta_flutter/widgets/maintab.dart';
import 'package:buleta_flutter/widgets/navbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Media Center Palangka Raya',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: NavBAr(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// import 'package:buleta_flutter/routes/routes.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// void main() {
//   runApp(GetMaterialApp(
//     debugShowCheckedModeBanner: false,
//     initialRoute: AppPage.getnavbar(),
//     getPages: AppPage.routes,
//   ));
// }
