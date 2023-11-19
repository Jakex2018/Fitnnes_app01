import 'package:flutter/material.dart';
class WelcomeButton extends StatelessWidget {
  const WelcomeButton({
    super.key, required this.numH, required this.numW, required this.title,
  });
  final double numH,numW;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * numH,
      width: MediaQuery.of(context).size.width * numW,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.green),
      child: Center(
          child: Text(
        title,
        style: const TextStyle(
            color: Colors.white,
            decoration: TextDecoration.none,
            fontSize: 14),
      )),
    );
  }
}

