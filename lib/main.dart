import 'package:flutter/material.dart';
import 'package:qrscanner_generator/qr_generator_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter QR Generator',
      home: QrGeneratorScreen(),
    );
  }
}
