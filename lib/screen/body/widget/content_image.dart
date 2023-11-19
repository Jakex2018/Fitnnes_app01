import 'package:fitnnes_app/screen/body/widget/overlay_image.dart';
import 'package:fitnnes_app/screen/body/widget/overlay_image_container.dart';
import 'package:flutter/material.dart';

class ContentImage extends StatelessWidget {
  const ContentImage({
    super.key,
    required this.image,
    required this.title,
  });
  final String image, title;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        OverlayImage(
            image: Image.asset(image,
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height * .3,
                width: MediaQuery.of(context).size.width),
            overlay: OverlayImageContainer(title: title)),
      ],
    );
  }
}
