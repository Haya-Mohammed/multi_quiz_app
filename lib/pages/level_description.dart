import 'package:flutter/material.dart';
import 'package:multi_quiz_app/components/my_outlined_btn.dart';

class LevelDesc extends StatelessWidget {
  final ImageProvider image;
  final Color color1;
  final Color color2;
  final int levelNum;
  final String title;
  final String levelDesc;
  final Function() function;

  const LevelDesc({
    Key? key,
    required this.image,
    required this.color1,
    required this.color2,
    required this.levelNum,
    required this.title,
    required this.levelDesc,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color1, color2],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                children: [
                  MyOutlinedBtn(
                    myIcon: Icons.close,
                    function: () {
                      Navigator.pop(context);
                    },
                    iconColor: Colors.white,
                    outlineColor: Colors.white,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image(image: image),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Level $levelNum',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                    fontFamily: 'SF-Pro-Text',
                  ),
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontFamily: 'SF-Pro-Text',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  levelDesc,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontFamily: 'SF-Pro-Text',
                  ),
                ),
                const SizedBox(height: 80),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: function,
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(17),
                      backgroundColor: Colors.white,
                      foregroundColor: color2,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    child: const Center(
                      child: Text('Game',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'SF-Pro-Text',
                          )),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
