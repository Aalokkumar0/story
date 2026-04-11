import 'package:flutter/material.dart';
import 'package:story/widget/list_card.dart';

class StoryScreen extends StatefulWidget {
  const StoryScreen({super.key});

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            "Story 📚",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListCard();
        },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            // ignore: avoid_print
            print("floting");
          },
          backgroundColor: Colors.yellow,
          child:Icon(Icons.add, color:Colors.black,),
          ),
    );
  }
}
