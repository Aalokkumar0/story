import 'package:story/data/story_data_entry.dart';

List<StoryDataEntry> initialStories = [
  StoryDataEntry(
    id: '1',
    title: 'First Steps ✨',
    content: 'Today I started this journey. Feeling excited and a little nervous, but mostly ready to write every day.',
    date: DateTime.now().subtract(const Duration(days: 3)),
  ),
  StoryDataEntry(
    id: '2',
    title: 'A Quiet Evening 🌙',
    content: 'Sat by the window and watched the city lights flicker on one by one. Sometimes silence speaks louder than words.',
    date: DateTime.now().subtract(const Duration(days: 1)),
  ),
  StoryDataEntry(
    id: '3',
    title: 'Big Breakthrough 🚀',
    content: 'Finally understood something I had been stuck on for weeks. That moment of clarity felt like the sun breaking through clouds.',
    date: DateTime.now(),
  ),
];