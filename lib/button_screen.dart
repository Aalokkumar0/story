import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key});

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(40),
        
        child:Column(
          children: [
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.send),
                hintText: "Enter Title...",
                
                border: OutlineInputBorder()),
            ),
          ],
        ),
      ),
    );
  }
}
