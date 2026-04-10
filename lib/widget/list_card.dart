import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  const ListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 10, left: 10, right: 10),
      color: Colors.amber,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Title",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 23),
            ),
            SizedBox(height: 10),
            Text(
              "Contant",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Colors.blueGrey,
              ),
            ),
            SizedBox(height: 10),
            Text(
              
              "22/04/2026",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 10,
                color: Colors.blueGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
