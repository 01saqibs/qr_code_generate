import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrGeneratorScreen extends StatefulWidget {
  const QrGeneratorScreen({super.key});

  @override
  State<QrGeneratorScreen> createState() => _QrGeneratorScreenState();
}

class _QrGeneratorScreenState extends State<QrGeneratorScreen> {
  TextEditingController qrController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("QR Generator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child:
        qrController.text.isNotEmpty ?
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Container(
                  width: size.width*0.80,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      QrImageView(data: qrController.text),
                      SizedBox(height: 10,),
                      Text(qrController.text.toString(), style: TextStyle(fontSize: 20),),

                    ],
                  )),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    qrController.clear();
                  });
                },
                child: const Text("Generate Again"))
          ],
        ) :
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.05),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                controller: qrController,
                decoration: const InputDecoration(
                    hintText: "Enter Code", border: InputBorder.none),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: const Text("Generate QR"))
          ],
        ),
      ),
    );
  }
}
