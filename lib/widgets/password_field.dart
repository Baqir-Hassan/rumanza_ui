import 'package:flutter/material.dart';

class LoginField extends StatefulWidget {
  final String hintText;
  const LoginField({super.key, required this.hintText});

  @override
  // ignore: library_private_types_in_public_api
  _LoginFieldState createState() => _LoginFieldState();
}

class _LoginFieldState extends State<LoginField> {
  bool _hideText = true;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 400,
      ),
      child: TextFormField(
        obscureText: _hideText,
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
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromRGBO(6, 122, 6, 1),
              width: 5,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          hintText: widget.hintText,
          suffixIcon: IconButton(
            icon: Icon(_hideText ? Icons.visibility_off : Icons.visibility),
            onPressed: () {
              setState(() {
                _hideText = !_hideText;
              });
            },
          ),
          prefixIcon: const Icon(Icons.password_rounded),
        ),
      ),
    );
  }
}
