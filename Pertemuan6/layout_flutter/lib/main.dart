import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      // ===== SOAL 3 =====
      // Memberikan padding 32 piksel di seluruh sisi Container
      padding: const EdgeInsets.all(32),

      child: Row(
        children: [
          // ===== SOAL 1 =====
          // Column diletakkan di dalam Expanded
          Expanded(
            child: Column(
              // ===== SOAL 1 =====
              // Posisi kolom berada di awal (rata kiri)
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ===== SOAL 2 =====
                // Teks pertama dibungkus Container
                Container(
                  // Padding bawah 8 piksel
                  padding: const EdgeInsets.only(bottom: 8),

                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                // ===== SOAL 2 =====
                // Warna teks menjadi abu-abu
                const Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),

          // ===== SOAL 3 =====
          // Ikon bintang warna merah
          const Icon(
            Icons.star,
            color: Colors.red,
          ),

          // ===== SOAL 3 =====
          // Teks "41"
          const Text('41'),
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Nama dan NIM Anda',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),

        // Mengganti Hello World dengan titleSection
        body: Center(
          child: titleSection,
        ),
      ),
    );
  }
}