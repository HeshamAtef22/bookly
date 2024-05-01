import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {

  void Function() onPressed;
  IconData icon;
  Color? color;
  CustomIconButton({required this.onPressed, required this.icon, this.color});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(icon),
      color: color ?? Colors.white,
      iconSize: 50,
    );
  }
}
