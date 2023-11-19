import 'package:flutter/material.dart';
class OverlayImage extends StatelessWidget {
  final Widget image;
  final Widget overlay;

  const OverlayImage({Key? key, required this.image, required this.overlay})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        image,
        Positioned(
          top: 80,
          left: 0,
          right: 0,
          bottom: 0,
          child: overlay,
        ),
      ],
    );
  }
}
