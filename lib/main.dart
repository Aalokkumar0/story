import 'package:flutter/material.dart';
import 'package:story/screens/story_screen.dart';

void main(){
  runApp(MyStoryApp());
}

class MyStoryApp extends StatelessWidget{
  const MyStoryApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My story App",
      home: StoryScreen(),
    );
  }
}

