import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key, required this.onPress, required this.text}) : super(key: key);

  final VoidCallback onPress;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: 196,
        height: 37,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: const Color(0xff749afb),
        ),
        child:  Text(
          text,
          textAlign: TextAlign.center,
          style:const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: "Roboto",
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
