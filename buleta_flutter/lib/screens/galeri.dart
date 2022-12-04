import 'package:buleta_flutter/screens/gambar.dart';
import 'package:flutter/material.dart';

class Galeri extends StatefulWidget {
  Galeri({Key? key}) : super(key: key);

  @override
  State<Galeri> createState() => _GaleriState();
}

class _GaleriState extends State<Galeri> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text("Galeri"),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class GambarPage extends StatefulWidget {
  GambarPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<GambarPage> createState() => _GambarPageState();
}

class _GambarPageState extends State<GambarPage> {
  List<String> values = [
    'assets/satu.jpg',
    'assets/dua.jpg',
    'assets/tiga.jpeg',
    'assets/empat.jpeg',
    'assets/lima.jpeg',
    'assets/enam.jpeg',
    'assets/tujuh.jpg',
    'assets/delapan.jpeg',
    'assets/sembilan.jpeg',
    'assets/sepuluh.jpeg',
    'assets/sebelas.jpeg',
    'assets/duabelas.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Section 18'),
        ),
        body: Container(
          child: GridView.builder(
            itemCount: 12,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => Gambar(
                                img: values[index],
                              ))));
                },
                child: Card(
                  elevation: 10,
                  child: Center(
                    child: Image.asset(values[index]),
                  ),
                ),
              );
            },
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          ),
        ));
  }
}
