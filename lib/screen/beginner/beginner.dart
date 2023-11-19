import 'package:fitnnes_app/screen/beginner/widget/card_exercise.dart';
import 'package:fitnnes_app/widget/category_list.dart';
import 'package:flutter/material.dart';

List<String> images = [
  'asset/images/person3.jpg',
  'asset/images/person2.jpg',
  'asset/images/person1.jpg',
  'asset/images/person3.jpg',
  'asset/images/person2.jpg',
  'asset/images/person1.jpg',
  'asset/images/person1.jpg',
  'asset/images/person1.jpg',
  'asset/images/person1.jpg',
];

class Beginner extends StatelessWidget {
  const Beginner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 47, 47, 61),
        title: const Text('Programs'),
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: const Color.fromARGB(255, 47, 47, 61),
          child: CustomScrollView(
            slivers: [
              SliverList(
                  delegate: SliverChildListDelegate([const CategoryList()])),
              SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                delegate: SliverChildListDelegate(
                  [
                    CardExercise(image: images[0]),
                    CardExercise(image: images[1]),
                    CardExercise(image: images[2]),
                    CardExercise(image: images[3]),
                    CardExercise(image: images[4]),
                    CardExercise(image: images[5]),
                    CardExercise(image: images[6]),
                    CardExercise(image: images[7]),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}