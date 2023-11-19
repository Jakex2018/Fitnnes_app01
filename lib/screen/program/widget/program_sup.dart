import 'package:flutter/material.dart';

class ProgramSup extends StatelessWidget {
  const ProgramSup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        'asset/images/person3.jpg',
        fit: BoxFit.cover,
        height: MediaQuery.of(context).size.height * .32,
      ),
       Positioned(
          top: 50,
          left: 20,
          child: Row(
            children: [
              GestureDetector(
                onTap: (){Navigator.pop(context);},
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 220,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Icon(
                    Icons.share,
                    color: Colors.white,
                  )
                ],
              )
            ],
          )),
      const Positioned(
        bottom: 20,
        left: 20,
        child: Text(
          'Core Programs and\nBack Lower',
          style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white),
          textAlign: TextAlign.start,
        ),
      )
    ]);
  }
}
