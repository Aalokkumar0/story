import 'package:flutter/material.dart';

class StoryDataEntry {
  final String id;
  final String title;
  final String content;
  final DateTime date;

  StoryDataEntry({
    required this.id,
    required this.title,
    required this.content,
    required this.date,
  });

  String get formattedDate {
    return '${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year}';
  }

  // A label for quick time context
  String get timeLabel {
    final now = DateTime.now();
    final diff = now.difference(date);
    if (diff.inDays == 0) return 'Today';
    if (diff.inDays == 1) return 'Yesterday';
    if (diff.inDays < 7) return '${diff.inDays} days ago';
    return formattedDate;
  }

  // Pick a color based on title/content length for visual variety
  Color get accentColor {
    final colors = [
      const Color(0xFFFFD700), // gold
      const Color(0xFF64B5F6), // light blue
      const Color(0xFFEF9A9A), // soft red
      const Color(0xFFA5D6A7), // soft green
      const Color(0xFFCE93D8), // lavender
      const Color(0xFFFFCC80), // amber
    ];
    return colors[(id.hashCode.abs()) % colors.length];
  }
}
