import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show ViewportOffset;

class CarouselFlowDelegate extends FlowDelegate {
  CarouselFlowDelegate({
    required this.viewportOffset,
    required this.filtersPerScreen,
  }) : super(repaint: viewportOffset);

  final ViewportOffset viewportOffset;
  final int filtersPerScreen;

  @override
  void paintChildren(FlowPaintingContext context) {
    final count = context.childCount;

    // Semua lebar painting yang tersedia
    final size = context.size.width;

    // Jarak yang ditempuh satu item "halaman" dari perspektif sistem scroll paging
    // Kita juga gunakan ukuran ini untuk lebar dan tinggi satu item
    final itemExtent = size / filtersPerScreen;

    // Posisi scroll saat ini dalam satuan fraksi item, misal: 0.0, 1.0, 1.3, 2.9
    // Nilai 1.3 berarti item index 1 aktif, dan user sudah scroll 30% menuju item index 2
    final active = viewportOffset.pixels / itemExtent;

    // Index item pertama yang perlu di-paint saat ini
    // Maksimal 3 item di kiri item aktif
    final min = math.max(0, active.floor() - 3).toInt();

    // Index item terakhir yang perlu di-paint saat ini
    // Maksimal 3 item di kanan item aktif
    final max = math.min(count - 1, active.ceil() + 3).toInt();

    // Buat transform untuk item yang terlihat dan urutkan berdasarkan jarak
    for (var index = min; index <= max; index++) {
      final itemXFromCenter = itemExtent * index - viewportOffset.pixels;
      final percentFromCenter = 1.0 - (itemXFromCenter / (size / 2)).abs();
      final itemScale = 0.5 + (percentFromCenter * 0.5);
      final opacity = 0.25 + (percentFromCenter * 0.75);

      final itemTransform = Matrix4.identity()
        ..multiply(Matrix4.translationValues((size - itemExtent) / 2, 0, 0))
        ..multiply(Matrix4.translationValues(itemXFromCenter, 0, 0))
        ..multiply(Matrix4.translationValues(itemExtent / 2, itemExtent / 2, 0))
        ..multiply(Matrix4.diagonal3Values(itemScale, itemScale, 1.0))
        ..multiply(Matrix4.translationValues(-itemExtent / 2, -itemExtent / 2, 0));

      context.paintChild(
        index,
        transform: itemTransform,
        opacity: opacity,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CarouselFlowDelegate oldDelegate) {
    return oldDelegate.viewportOffset != viewportOffset;
  }
}
