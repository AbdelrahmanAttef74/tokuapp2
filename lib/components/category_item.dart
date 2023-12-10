import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  Category({this.color, this.text, this.onTap});
  String? text;
  Color? color;
  // Function()? onTap;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16),
      alignment: Alignment.centerLeft,
      child: Text(
        text!,
        style: const TextStyle(color: Colors.white, fontSize: 22),
      ),
      height: 80,
      width: double.infinity,
      color: color,
    );
  }
}
