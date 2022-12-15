import 'package:flutter/material.dart';

class Tentang extends StatefulWidget {
  Tentang({Key? key}) : super(key: key);

  @override
  State<Tentang> createState() => _TentangState();
}

class _TentangState extends State<Tentang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Aplikasi'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Aplikasi Buletin Media Center Palangka Raya merupakan aplikasi buletin yang dibuat dengan menggunakan REST API dari laman Wordpress Media Center Palangka Raya. Aplikasi ini dibuat untuk memberikan pengalaman membaca artikel atau buletin milik Media Center Palangka Raya tanpa harus membuka blog wordpress pada website ',
              textAlign: TextAlign.justify,
            ),
            // const SizedBox(height: 16),
            // Text(
            //   'Kebijakan ini menjelaskan  bahwa Diskusiaza atau kami mengumpulkan,memproses,mengungkapkan data pribadi anda melalui penggunaan aplikasi dan situs web Diskusiaza,fitur-fitur dan layanan lainnya secara umum (“Layanan”).',
            //   textAlign: TextAlign.justify,
            // ),
            // const SizedBox(height: 16),
            // Text(
            //   'Kebijakan ini menjelaskan dan memberikan landasan dasar mengenai bagaimana kami mengumpulkan,menggunakan,memproses,dan mengungkapkan data pribadi anda melalui penggunaan layanan. Mohon membaca kebijakan privasi kami dengan seksama dan dengan mengunjungi situs kami, Anda telah menerima dan menyetujui pendekatan dan cara-cara yang digambarkan dalam kebijakan privasi ini.',
            //   textAlign: TextAlign.justify,
            // ),
          ],
        ),
      ),

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
