import 'package:flutter/material.dart';


class ListCard extends StatelessWidget{
  const ListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      
      color: Colors.amber,
      child: Padding(
        padding:EdgeInsets.all(18.0),
        child: Text("Title "),
      ),
    );
  }
  
}