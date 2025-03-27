import 'package:flutter/material.dart';

// ignore: camel_case_types
class primaryButton extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  const primaryButton({super.key , required this.onPressed , required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: double.infinity,
      child: ElevatedButton(
          onPressed: onPressed,
          child:  Text(title)),
    );
  }
}