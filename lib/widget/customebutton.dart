

import 'package:flutter/material.dart';

class Customebotton extends StatelessWidget {
  const Customebotton({super.key, required this.text, this.onPressed,required GlobalKey<FormState>formkey});
final String text;
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 100),
      ),
      onPressed: onPressed, child: Text(text),
      );
  }
}
