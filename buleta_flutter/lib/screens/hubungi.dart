import 'package:buleta_flutter/controller/hubungicontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class HubungiView extends GetView<HubungiController> {
  final pertC = Get.put(HubungiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hubungi Admin',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        backgroundColor: Colors.white,
        leading: const BackButton(color: Colors.black),
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
                  'https://assets4.lottiefiles.com/private_files/lf30_vrcurbxk.json',
                  height: 300,
                  width: 300),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              child: Text("Google Map"),
              onPressed: (() {
                controller.launchURL(
                    'https://maps.app.goo.gl/16A1nYts79W5eLre9?g_st=ic');
              }),
            ),
            ElevatedButton(
              child: Text("Email Kominfo Kota Palangka Raya"),
              onPressed: (() {
                controller.sendEmaili('kominfo@palangkaraya.go.id');
              }),
            ),
            ElevatedButton(
              child: Text("Email Media Center Kota Palangka Raya"),
              onPressed: (() {
                controller.sendEmaili('mediacenter@palangkaraya.go.id');
              }),
            ),
            Expanded(child: Text("")),
            Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Media Center Palangka Raya"),
                    Text("v.1.0.0"),
                  ]),
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
