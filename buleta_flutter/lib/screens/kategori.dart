import 'package:buleta_flutter/screens/kesehatan.dart';
import 'package:buleta_flutter/screens/pembangunan.dart';
import 'package:buleta_flutter/screens/pendidikan.dart';
import 'package:buleta_flutter/screens/pengumuman.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Kategori extends StatefulWidget {
  const Kategori({super.key});

  @override
  State<Kategori> createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kategori',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        backgroundColor: Colors.white,
        // leading: const BackButton(color: Colors.black),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              alignment: Alignment.center,
              child: Lottie.network(
                  'https://assets10.lottiefiles.com/packages/lf20_px0ntw70.json',
                  height: 300,
                  width: 300),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              child: Text("Kesehatan"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Kesehatan(),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text("Pendidikan"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Pendidikan(),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text("Serba Serbi"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Pendidikan(),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text("Sosial Budaya"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Kesehatan(),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text("Pengumuman"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Pengumuman(),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text("Pembangunan"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Pembangunan(),
                  ),
                );
              },
            ),
            Expanded(child: Text("")),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
