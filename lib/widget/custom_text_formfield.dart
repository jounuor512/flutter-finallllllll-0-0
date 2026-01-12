import 'package:flutter/material.dart';

class customtextfield extends StatelessWidget {
  const customtextfield({
    super.key,
    required this.hinttext,
     this.validator,
      this.obscureText,
      this.suffixIcon,
  });
final String hinttext;
final String? Function(String?)? validator;
final bool? obscureText;
final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator:validator ,
      obscureText:obscureText??false ,
      decoration: InputDecoration(
        suffixIcon:suffixIcon ,
        hintText: hinttext,
        fillColor: const Color.fromARGB(255, 216, 210, 210),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}