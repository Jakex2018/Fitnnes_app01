import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class ButtonOne extends StatelessWidget {
  ButtonOne({
    super.key, required this.title, required this.color, required this.weight,required this.fontSize, required this.colorTwo,
  });

  final String title;
  final Color color;
  final Color colorTwo;
  final FontWeight weight;
  double fontSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.5),
      decoration: BoxDecoration(
        color:colorTwo,borderRadius: BorderRadius.circular(20)
      ),
      child: Text(title , style: TextStyle(
        color:color,fontWeight: weight,fontSize: fontSize
      ),),
    );
  }
}