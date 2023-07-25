import 'package:flutter/material.dart';
import 'package:multi_quiz_app/pages/level_description.dart';

import '../constants.dart';

class MCQDescPage extends StatelessWidget {
  const MCQDescPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LevelDesc(
      image: const AssetImage('assets/images/ballon-b.png'),
      color1: kBlueBg,
      color2: kL2,
      levelNum: 2,
      title: 'MCQ',
      levelDesc:
          'Do you feel confident? Here you\'ll challenge one of our most difficult travel questions!',
      function: () {
        Navigator.pushNamed(context, 'screen21');
      },
    );
  }
}
