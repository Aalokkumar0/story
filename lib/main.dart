import 'package:flutter/material.dart';
import 'package:story/screens/story_screen.dart';

void main() {
  runApp(const MyStoryApp());
}

class MyStoryApp extends StatelessWidget {
  const MyStoryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Story',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0F0D1A),
        colorScheme: ColorScheme.dark(
          primary: const Color(0xFFFFD700),
          surface: const Color(0xFF1E1B2E),
        ),
        fontFamily: 'Roboto',
        useMaterial3: true,
      ),
      home: const StoryScreen(),
    );
  }
}
