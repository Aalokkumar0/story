import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget{
  const ButtonScreen({super.key});

  @override
 State<ButtonScreen> createState ()=> _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen>{
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        height: 500,
        color:Color.fromARGB(255, 162, 143, 92),
        
      ),
    );
  }
}