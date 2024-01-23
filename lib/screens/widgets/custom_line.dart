import 'package:flutter/material.dart';

class CustomLine extends StatefulWidget {
  const CustomLine({super.key});

  @override
  State<CustomLine> createState() => _CustomLineState();
}

class _CustomLineState extends State<CustomLine> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 70,
        height: 2,
        color: Colors.black,
      ),
    );
  }
}
