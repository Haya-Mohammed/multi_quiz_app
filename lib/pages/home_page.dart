import 'package:flutter/material.dart';
import 'package:multi_quiz_app/components/level_widget.dart';
import 'package:multi_quiz_app/components/my_outlined_btn.dart';
import 'package:multi_quiz_app/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          MyOutlinedBtn(
            myIcon: Icons.favorite,
            function: () {},
            iconColor: kBlueIcon,
            outlineColor: Colors.grey.withOpacity(0.5),
          ),
          MyOutlinedBtn(
            myIcon: Icons.person,
            function: () {},
            iconColor: kBlueIcon,
            outlineColor: Colors.grey.withOpacity(0.5),
          ),

          //const SizedBox(height: 20),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Let\'s Play',
                style: TextStyle(
                  color: kRedFont,
                  fontSize: 25,
                  fontFamily: kFontFamily,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Be the first!',
                style: TextStyle(
                  color: kGreyFont,
                  fontFamily: kFontFamily,
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    levelWidget(
                      image: 'assets/images/bags.png',
                      icon: Icons.check,
                      levelNum: 1,
                      title: 'T/F',
                      color1: kL1,
                      color2: kL12,
                      function: () {
                        Navigator.pushNamed(context, 'screen10');
                      },
                    ),
                    levelWidget(
                      image: 'assets/images/ballon-s.png',
                      icon: Icons.play_arrow,
                      levelNum: 2,
                      title: 'MCQ',
                      color1: kL2,
                      color2: kL22,
                      function: () {
                        Navigator.pushNamed(context, 'screen20');
                      },
                    ),
                    levelWidget(
                      image: 'assets/images/camera.png',
                      icon: Icons.lock,
                      levelNum: 3,
                      title: 'Experienced',
                      color1: kL3,
                      color2: kL32,
                      function: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
