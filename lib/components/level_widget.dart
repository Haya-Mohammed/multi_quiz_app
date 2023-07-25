import 'package:flutter/material.dart';

Widget levelWidget({
  required String image,
  required IconData icon,
  required int levelNum,
  required String title,
  required Color color1,
  required Color color2,
  required Function() function,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
    child: Stack(
      alignment: Alignment.topRight,
      children: [
        GestureDetector(
          onTap: function,
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 40, left: 0),
            padding: const EdgeInsets.only(
                top: 20, bottom: 15, left: 20, right: 100),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [
                  color1,
                  color2,
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      icon,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  'Level $levelNum',
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'SF-Pro-Text-Regular',
                  ),
                ),
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'SF-Pro-Text'),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 25),
          child: Image(image: AssetImage(image), width: 100),
        ),
      ],
    ),
  );
}
