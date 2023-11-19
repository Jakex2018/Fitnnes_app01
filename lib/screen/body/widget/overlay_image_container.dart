import 'package:fitnnes_app/screen/body/widget/button_three.dart';
import 'package:flutter/material.dart';

class OverlayImageContainer extends StatelessWidget {
  const OverlayImageContainer({
    super.key, required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(.2),
      child: Center(
        child: Column(
          children: [
             Text(
              title,
              style: const TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            const ButtonThree(),
          ],
        ),
      ),
    );
  }
}