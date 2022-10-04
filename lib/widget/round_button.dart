import 'package:flutter/material.dart';

class RoundButoon extends StatelessWidget {
  RoundButoon({required this.onTap, required this.title});
  String? title;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: Colors.deepOrange,
        ),
        child: Text(title!),
      ),
    );
  }
}
