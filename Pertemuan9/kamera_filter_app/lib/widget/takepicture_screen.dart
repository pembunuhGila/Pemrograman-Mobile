import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'photo_filter_screen.dart';

// Layar untuk mengambil foto menggunakan kamera
class TakePictureScreen extends StatefulWidget {
  const TakePictureScreen({
    super.key,
    required this.camera,
  });

  final CameraDescription camera;

  @override
  TakePictureScreenState createState() => TakePictureScreenState();
}

class TakePictureScreenState extends State<TakePictureScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    // Buat CameraController untuk menampilkan output kamera
    _controller = CameraController(
      widget.camera,
      ResolutionPreset.medium,
    );
    // Inisialisasi controller - mengembalikan Future
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    // Buang controller ketika widget di-dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ambil Foto'),
        backgroundColor: Colors.black87,
      ),
      backgroundColor: Colors.black,
      // Gunakan FutureBuilder untuk menampilkan loading spinner
      // sampai controller selesai diinisialisasi
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // Jika Future selesai, tampilkan preview kamera
            return CameraPreview(_controller);
          } else {
            // Jika belum, tampilkan loading indicator
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          // Ambil foto dalam blok try/catch
          try {
            // Pastikan kamera sudah diinisialisasi
            await _initializeControllerFuture;

            // Ambil foto dan dapatkan path file-nya
            final image = await _controller.takePicture();

            if (!context.mounted) return;

            // Navigasi ke layar filter foto dengan path gambar
            await Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PhotoFilterScreen(
                  imagePath: image.path,
                ),
              ),
            );
          } catch (e) {
            // ignore: avoid_print
            print(e);
          }
        },
        icon: const Icon(Icons.camera_alt),
        label: const Text('Ambil Foto'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
