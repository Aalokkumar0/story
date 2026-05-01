import 'package:flutter/material.dart';
import 'package:story/screens/button_screen.dart';
import 'package:story/widget/list_card.dart';
import '../data/data.dart';
import '../data/story_data_entry.dart';

class StoryScreen extends StatefulWidget {
  const StoryScreen({super.key});

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  final List<StoryDataEntry> _entries = List.from(initialStories);

  void _addEntry(StoryDataEntry entry) {
    setState(() {
      _entries.insert(0, entry); // newest first
    });
  }

  void _deleteEntry(int index) {
    setState(() {
      _entries.removeAt(index);
    });
  }

  void _openAddSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => ButtonScreen(onSave: _addEntry),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F0D1A),
      appBar: _buildAppBar(),
      body: _entries.isEmpty ? _buildEmptyState() : _buildList(),
      floatingActionButton: _buildFAB(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: const Color(0xFF0F0D1A),
      elevation: 0,
      toolbarHeight: 80,
      title: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0xFFFFD700).withOpacity(0.15),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Text('📚', style: TextStyle(fontSize: 20)),
          ),
          const SizedBox(width: 14),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'My Story',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 22,
                  letterSpacing: 0.5,
                ),
              ),
              Text(
                '${_entries.length} ${_entries.length == 1 ? 'entry' : 'entries'}',
                style: TextStyle(color: Colors.grey[500], fontSize: 12),
              ),
            ],
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: IconButton(
            icon: const Icon(Icons.search_rounded, color: Colors.white70),
            onPressed: () {}, // future feature placeholder
            tooltip: 'Search',
          ),
        ),
      ],
    );
  }

  Widget _buildList() {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 8, bottom: 100),
      itemCount: _entries.length,
      itemBuilder: (context, index) {
        return AnimatedOpacity(
          opacity: 1.0,
          duration: const Duration(milliseconds: 300),
          child: ListCard(
            entry: _entries[index],
            onDelete: () => _deleteEntry(index),
          ),
        );
      },
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '✨',
            style: TextStyle(fontSize: 64, color: Colors.grey[700]),
          ),
          const SizedBox(height: 20),
          Text(
            'Your story starts here',
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Tap + to write your first entry',
            style: TextStyle(color: Colors.grey[600], fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget _buildFAB() {
    return FloatingActionButton.extended(
      onPressed: _openAddSheet,
      backgroundColor: const Color(0xFFFFD700),
      foregroundColor: Colors.black,
      elevation: 6,
      icon: const Icon(Icons.add_rounded, size: 22),
      label: const Text(
        'New Entry',
        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
      ),
    );
  }
}
