import 'package:flutter/material.dart';

class GradButton extends StatelessWidget {
  final String btnText;
  final Color color;
  final VoidCallback onPressed;
  final Size size;
  final double font;
  const GradButton({
    super.key,
    this.btnText = 'Sign In',
    this.color = const Color.fromARGB(255, 12, 90, 12),
    required this.onPressed,
    this.size = const Size(110, 50),
    this.font = 15,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: size,
          backgroundColor: color,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          shadowColor: Colors.transparent,
        ),
        child: Text(
          btnText,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: font,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
