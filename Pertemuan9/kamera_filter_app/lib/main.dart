import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'widget/takepicture_screen.dart';

Future<void> main() async {
  // Pastikan plugin services sudah diinisialisasi sebelum availableCameras() dipanggil
  WidgetsFlutterBinding.ensureInitialized();

  // Ambil daftar kamera yang tersedia di perangkat
  final cameras = await availableCameras();

  // Ambil kamera pertama (biasanya kamera belakang)
  final firstCamera = cameras.first;

  runApp(
    MaterialApp(
      title: 'Kamera Filter App',
      theme: ThemeData.dark(),
      home: TakePictureScreen(camera: firstCamera),
      debugShowCheckedModeBanner: false,
    ),
  );
}
