import 'package:flutter/material.dart';

class MyOutlinedBtn extends StatelessWidget {
  final IconData myIcon;
  final Function() function;
  final Color iconColor;
  final Color outlineColor;
  const MyOutlinedBtn({
    Key? key,
    required this.myIcon,
    required this.function,
    required this.iconColor,
    required this.outlineColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: function,
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: outlineColor),
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(0),
      ),
      child: Icon(
        myIcon,
        color: iconColor,
        size: 20,
      ),
    );
  }
}
