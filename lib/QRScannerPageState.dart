import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class QRScannerPage extends StatefulWidget {
  const QRScannerPage({super.key});

  @override
  _QRScannerPageState createState() => _QRScannerPageState();
}

class _QRScannerPageState extends State<QRScannerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0C356A),
        title: const Text('QR Kod Okuyucu',
        style: TextStyle(color: Colors.black,
        fontWeight: FontWeight.w700),),
        centerTitle: true,
        elevation: 0.0,
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.camera_alt,
              size: 100,
              color: Colors.black,
            ),
            const SizedBox(height: 20),
            const Text(
              'Kamera Erişimi Gerekiyor',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final status = await Permission.camera.request();
                if (status.isGranted) {
                  // İzin verilirse, QR kod tarayıcıya yönlendirme yapılabilir.
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const QRScannerPage()),
                  );
                } else {
                  // İzin verilmezse, kullanıcıya bilgi verilebilir.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Kamera izni gerekli!')),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffFFC436),
                padding:
                const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child:const Text(
                'Kamera Erişimi İste',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}