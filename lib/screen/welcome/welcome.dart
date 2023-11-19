import 'package:fitnnes_app/screen/body/body.dart';
import 'package:fitnnes_app/screen/welcome/widget/welcome_button.dart';
import 'package:fitnnes_app/screen/welcome/widget/welcome_image.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const WelcomeImage(),
        const Positioned(
            top: 50,
            right: 90,
            child: Center(
                child: Text(
              'Enjoy a workout',
              style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontSize: 20),
            ))),
        Positioned(
          bottom: 120,
          left: 30,
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Body()));
            },
            child: const WelcomeButton(numH: .08, numW: .8, title: 'Get Started',),
          ),
        ),
       const WelcomeButton(numH: .08, numW: .8, title: 'Contact Us',)
      ],
    );
  }
}