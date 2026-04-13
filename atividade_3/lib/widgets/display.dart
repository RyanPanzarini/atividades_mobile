import 'package:flutter/material.dart';

class DisplayWidget extends StatelessWidget {
  final String display;

  DisplayWidget({required this.display});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.bottomRight,
        padding: EdgeInsets.all(20),
        child: Text(
          display,
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}