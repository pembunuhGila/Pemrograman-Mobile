import 'dart:io';

import 'package:flutter/material.dart';

@immutable
class FilterItem extends StatelessWidget {
  const FilterItem({
    super.key,
    required this.color,
    this.onFilterSelected,
    this.imagePath,
  });

  final Color color;
  final VoidCallback? onFilterSelected;
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onFilterSelected,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ClipOval(
            child: imagePath != null
                // Gunakan foto yang diambil sebagai thumbnail filter
                ? Image.file(
                    File(imagePath!),
                    color: color == Colors.white ? null : color.withValues(alpha: 0.5),
                    colorBlendMode: BlendMode.color,
                    fit: BoxFit.cover,
                  )
                // Fallback ke lingkaran warna
                : DecoratedBox(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: color,
                      border: Border.all(color: Colors.white30, width: 1),
                    ),
                    child: const SizedBox.expand(),
                  ),
          ),
        ),
      ),
    );
  }
}
