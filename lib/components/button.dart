import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/colors.dart';

class Button extends StatelessWidget {
  final String text;
  final bool? enabled;
  final void Function() onTap;
  const Button({
    super.key,
    required this.text,
    required this.onTap,
    required this.enabled,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(40),
        ),
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text, style: TextStyle(color: Colors.white)),
            SizedBox(width: 10),
            Icon(Icons.arrow_forward, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
