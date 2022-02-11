import 'package:flutter/material.dart';

Column buildGenderWidget({required String imagePath,required String gender, Color color = Colors.white}) {
    return Column(
      children: [
        Image.asset(imagePath),
        Text(
          gender,
          style:  TextStyle(
            color: color,
            fontSize: 12,
          ),
        ),
      ],
    );
  }