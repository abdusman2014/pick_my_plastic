import 'package:flutter/material.dart';

class SharedRow extends StatelessWidget {
  const SharedRow(
      {Key? key,
      required this.text,
      required this.buttonText,
      required this.onPress,
      this.color = Colors.white})
      : super(key: key);
  final String text;
  final String buttonText;
  final Color color;

  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: 24,
            fontFamily: "Open Sans",
            fontWeight: FontWeight.w600,
          ),
        ),
        Expanded(child: Container()),
        Column(
          children: [
            GestureDetector(
              onTap: onPress,
              child: Container(
                width: 65,
                height: 60,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xff4b75e0), Color(0x934b75e0)],
                  ),
                ),
                child: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              buttonText,
              style: const TextStyle(
                color: Color(0xff686666),
                fontSize: 13,
                decoration: TextDecoration.underline,
                fontFamily: "Open Sans",
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        )
      ],
    );
  }
}
