import 'package:fitnnes_app/screen/program/widget/program_sup.dart';
import 'package:flutter/material.dart';

class Program extends StatelessWidget {
  const Program({super.key});
  @override
  Widget build(BuildContext context) {
    const String textPrograms =
        "Core Programs and Back-Lowe is a program that trains students to become core program developers and back-end engineers. The program is designed to provide students with the skills and knowledge they need to succeed in these in-demand fields.";
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: const Column(
        children: [
          ProgramSup(),
          ProgramBody(textPrograms: textPrograms),
          ProgramsButton()
        ],
      ),
    );
  }
}

class ProgramBody extends StatelessWidget {
  const ProgramBody({
    super.key,
    required this.textPrograms,
  });

  final String textPrograms;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .6325,
      width: MediaQuery.of(context).size.width,
      color: const Color.fromARGB(255, 47, 47, 61),
      child: CustomScrollView(
        slivers: [
          // Content before the SliverList
          SliverList(
            delegate: SliverChildListDelegate([
              const StarContent(),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconName(
                    icon: Icon(
                      Icons.calendar_month,
                      color: Colors.white,
                    ),
                    title: '4 Weeks',
                  ),
                  IconName(
                    icon: Icon(
                      Icons.timer,
                      color: Colors.white,
                    ),
                    title: '20 Mins/day',
                  ),
                  IconName(
                    icon: Icon(
                      Icons.supervised_user_circle,
                      color: Colors.white,
                    ),
                    title: 'Beginner',
                  ),
                ],
              ),
              const ProgramLine(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  textPrograms,
                  style: const TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontSize: 13,
                  ),
                ),
              ),
              const ProgramLine(),
            ]),
          ),

          // The SliverList for program info
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => const ProgramInfo(),
              childCount: 30, // Replace with the actual number of program info items
            ),
          ),
        ],
      ),
    );
  }
}


class ProgramInfo extends StatelessWidget {
  const ProgramInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('asset/images/person2.jpg',height: 60,)),
          RichText(
            text: const TextSpan(
              text: 'Intese Abs Workout\n',
              children: [
                TextSpan(
                  text: 'Total Body'
                )
              ]
            ),
          ),
          RichText(
            text: const TextSpan(
              text: 'Day 1\n',
              children: [
                TextSpan(
                  text: '20 min'
                )
              ]
            ),
          )
        ],
            ),
    );
  }
}

class ProgramSchudlle extends StatelessWidget {
  const ProgramSchudlle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Schedule',
            style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontSize: 17),
          ),
          Text(
            'View all',
            style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontSize: 10),
          ),
        ],
      ),
    );
  }
}

class ProgramsButton extends StatelessWidget {
  const ProgramsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 35,
      decoration: const BoxDecoration(
          color: Colors.green),
      child: const Center(
        child: Text(
          'Start Session',
          style: TextStyle(
              color: Colors.white,
              decoration: TextDecoration.none,
              fontSize: 13),
        ),
      ),
    );
  }
}

class ProgramLine extends StatelessWidget {
  const ProgramLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        height: 3,
        width: MediaQuery.of(context).size.width,
        color: Colors.black12,
      ),
    );
  }
}

class IconName extends StatelessWidget {
  const IconName({
    super.key,
    required this.icon,
    required this.title,
  });
  final Icon icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        icon,
        const SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: const TextStyle(
              color: Colors.white,
              decoration: TextDecoration.none,
              fontSize: 13),
        )
      ],
    );
  }
}

class StarContent extends StatelessWidget {
  const StarContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 15, top: 10),
      child: Row(
        children: [
          Stars(
            color: Colors.yellow,
            size: 15,
          ),
          SizedBox(
            width: 13,
          ),
          Text(
            '[18 reviews]',
            style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontSize: 18),
          )
        ],
      ),
    );
  }
}

class Stars extends StatelessWidget {
  const Stars({
    super.key,
    required this.color,
    required this.size,
  });
  final Color color;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: color,
          size: size,
        ),
        Icon(
          Icons.star,
          color: color,
          size: size,
        ),
        Icon(
          Icons.star,
          color: color,
          size: size,
        ),
        Icon(
          Icons.star,
          color: color,
          size: size,
        ),
        Icon(
          Icons.star,
          color: color,
          size: size,
        ),
      ],
    );
  }
}
