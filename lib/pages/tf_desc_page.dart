import 'package:flutter/material.dart';
import 'package:multi_quiz_app/pages/level_description.dart';

import '../constants.dart';

class TFDescPage extends StatelessWidget {
  const TFDescPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LevelDesc(
      image: const AssetImage('assets/images/bags.png'),
      color1: kL1,
      color2: kL12,
      levelNum: 1,
      title: 'T/F',
      levelDesc:
          'Do you feel confident? Here you\'ll challenge one of our most difficult travel questions!',
      function: () {
        Navigator.pushNamed(context, 'screen11');
      },
    );
  }
}
