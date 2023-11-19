import 'package:fitnnes_app/screen/beginner/beginner.dart';
import 'package:flutter/material.dart';
class ButtonThree extends StatelessWidget {
  const ButtonThree({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context) => const Beginner(),));
      },
      child: Container(
        height: MediaQuery.of(context).size.height * .05,
        width: MediaQuery.of(context).size.width * .36,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.green),
        child: const Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Get Started',
              style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontSize: 14),
            ),
            Icon(
              Icons.arrow_forward,
              color: Colors.white,
            )
          ],
        )),
      ),
    );
  }
}
