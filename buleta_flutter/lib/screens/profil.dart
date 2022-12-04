import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profil Media Center'),
          backgroundColor: Colors.blueGrey,
        ),
        body: ListView(
          padding: EdgeInsets.all(8),
          children: <Widget>[
            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 10.0, left: 10.0),
                child: Text(
                  "Profil Media Center",
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Image.asset("assets/baliho_mc.jpg"),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  Text(
                    "Berdasarkan Peraturan Daerah Kota Palangka Raya Nomor : 11 Tahun 2016 tentang Pembentukan dan Susunan Perangkat Daerah Kota Palangka Raya dan Peraturan Menteri Komunikasi dan Informatika RI Nomor : 14 Tahun 2016 tentang Pedoman Nomenklatur Perangkat Daerah Bidang Komunikasi dan Informatika, maka Dinas Komunikasi, Informatika, Statistik dan Persandian Kota Palangka Raya memiliki peran yang sangat strategis dalam pengembangan Teknologi Informasi dan Komunikasi (TIK), mengingat perkembangan TIK saat ini semakin pesat, dapat dipastikan pemanfaatan TIK oleh masyarakat sudah menjadi kebutuhan dalam menjalankan aktivitasnya.",
                    style: TextStyle(fontSize: 16.0),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Sebagai tindak lanjut dari Surat Menteri Komunikasi dan Informatika RI Nomor : s-1923/M.Kominfo /PL.04.01/01/2016 Tanggal 16 Desember 2016 intinya Pemerintah Kota Palangka Raya dalam hal ini Dinas Komunikasi, Informatika, Statistik dan Persandian Kota Palangka Raya mendapat program bantuan hibah peralatan media center, selanjutnya pada Tanggal 31 Januari 2017 Direktorat Jenderal Informasi dan Komunikasi Publik Kementerian Komunikasi dan Informatika mengundang Kepala Dinas Komunikasi, Informatika, Statistik dan Persandian Kota Palangka Raya bersama dengan 25 Pejabat Pemerintah Kabupaten/Kota se Indonesia untuk melakukan penanda tanganan Berita Acara Serah Terima dan Naskah Perjanjian Hibah Media Center TA. 2016 bertempat diruang rapat melalui Gedung B Lantai 2 Kementerian Komunikasi dan Informatika jl. Medan Merdeka Barat No.09 Jakarta Pusat.",
                    style: TextStyle(fontSize: 16.0),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Tujuan pembangunan dan pengembangan media center adalah untuk mendukung pelaksanaan tugas lembaga pemerintah daerah khususnya dalam penyebaran informasi untuk kebutuhan publik dan juga sebagai upaya mengembangkan jaringan pertukaran informasi antara lembaga Kabupaten/Kota, Pemerintah Provinsi dan Kementerian/Lembaga. Media center dirancang untuk mengembangkan pelayanan informasi kepada publik sebagai bagian dari upaya mendorong masyarakat dalam mendapatkan informasi yang mudah, cepat dan terjangkau. Media Center Isen Mulang Kota Palangka Raya mulai operasional pada tanggal 1 Maret 2017.",
                    style: TextStyle(fontSize: 16.0),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,

      // child: Container(
      //   child: ListView.builder(
      //     itemCount: 6,
      //     itemBuilder: (context, i) {
      //       return Card(
      //         child: ListTile(
      //           title: Row(
      //             children: [
      //               Expanded(
      //                 child: Icon(Icons.book),
      //               ),
      //               Expanded(
      //                   child: Container(
      //                 child: Text("Artikel"),
      //               ))
      //             ],
      //           ),
      //         ),
      //       );
      //     },
      //   ),
      // ),
    );
  }
}
