import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Level {
  final int no;
  final String title;
  final String? description;
  final ImageProvider? image;
  final IconData? status;
  final List<Color>? colors;
  final String routeName;

  Level({
    required this.no,
    required this.title,
    required this.description,
    required this.image,
    required this.status,
    required this.colors,
    required this.routeName,
  });
}
