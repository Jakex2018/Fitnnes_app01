import 'package:fitnnes_app/screen/body/widget/content_image.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 47, 47, 61),
        title: const Text('Trainings'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ContentImage(
              image: 'asset/images/person1.jpg',
              title: 'Beginner',
            ),
            ContentImage(
              image: 'asset/images/person2.jpg',
              title: 'Intermediate',
            ),
            ContentImage(
              image: 'asset/images/person3.jpg',
              title: 'Advance',
            ),
          ],
        ),
      ),
    );
  }
}