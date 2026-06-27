import 'dart:io';

import 'package:flutter/material.dart';

import 'filter_selector.dart';

// Layar untuk menampilkan foto yang diambil beserta filter carousel
class PhotoFilterScreen extends StatefulWidget {
  final String imagePath;

  const PhotoFilterScreen({super.key, required this.imagePath});

  @override
  State<PhotoFilterScreen> createState() => _PhotoFilterScreenState();
}

class _PhotoFilterScreenState extends State<PhotoFilterScreen> {
  // Daftar filter warna: putih (tanpa filter) + warna-warna primer
  final _filters = [
    Colors.white, // Tanpa filter
    ...List.generate(
      Colors.primaries.length,
      (index) => Colors.primaries[(index * 4) % Colors.primaries.length],
    )
  ];

  final _filterColor = ValueNotifier<Color>(Colors.white);

  void _onFilterChanged(Color value) {
    _filterColor.value = value;
  }

  @override
  void dispose() {
    _filterColor.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Pilih Filter Foto'),
        backgroundColor: Colors.black87,
        actions: [
          IconButton(
            icon: const Icon(Icons.check, color: Colors.white),
            tooltip: 'Simpan',
            onPressed: () {
              // TODO: Implementasi simpan foto dengan filter
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Foto disimpan!')),
              );
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          // Tampilan foto dengan filter warna
          Positioned.fill(
            child: _buildPhotoWithFilter(),
          ),
          // Carousel filter di bagian bawah
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: _buildFilterSelector(),
          ),
        ],
      ),
    );
  }

  Widget _buildPhotoWithFilter() {
    return ValueListenableBuilder<Color>(
      valueListenable: _filterColor,
      builder: (context, color, child) {
        // Tampilkan foto yang diambil dengan filter warna
        return Image.file(
          File(widget.imagePath),
          color: color == Colors.white ? null : color.withValues(alpha: 0.5),
          colorBlendMode: BlendMode.color,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        );
      },
    );
  }

  Widget _buildFilterSelector() {
    return FilterSelector(
      onFilterChanged: _onFilterChanged,
      filters: _filters,
      imagePath: widget.imagePath, // Gunakan foto asli sebagai thumbnail
    );
  }
}
