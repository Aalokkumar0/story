import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key});

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          // ignore: sized_box_for_whitespace
          Container(
            height: 500,
            width: 400,
            child: Center(child: Text("this is buttomsheet")),
          ),
        ],
      ),
    );
  }
}
