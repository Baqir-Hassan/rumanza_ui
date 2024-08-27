import 'package:flutter/material.dart';

class UserName extends StatelessWidget {
  final String hintText;
  final bool hideText;
  const UserName({
    super.key,
    required this.hintText,
    this.hideText = false,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 400,
      ),
      child: TextFormField(
        obscureText: hideText,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: const EdgeInsets.all(20),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromRGBO(139, 138, 151, 1),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          focusColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromRGBO(6, 122, 6, 1),
              width: 5,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          hintText: hintText,
          prefixIcon: const Icon(Icons.person),
        ),
      ),
    );
  }
}
