import 'package:fitnnes_app/screen/program/program.dart';
import 'package:flutter/material.dart';

class CardExercise extends StatelessWidget {
  final String image;

  const CardExercise({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Program(),
            ));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(image, height: 100)),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Venenatis Accusan',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Text(
                  '30 m',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                  width: 60,
                ),
                Text(
                  'Total Body',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

/*
GridView.builder(
          itemCount: images.length,
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return CardExercise(image: images[index]);
          },
        ),
 */