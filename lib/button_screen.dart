import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key});

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  final _titleEditingController = TextEditingController();

  final _contentEditingController = TextEditingController();

  void printtitle() {
    // ignore: avoid_print
    print(_titleEditingController.text);
    // ignore: avoid_print
    print(_contentEditingController.text);

    _titleEditingController.clear();
    _contentEditingController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(40),

        child: Column(
          children: [
            TextField(
              controller: _titleEditingController,
              decoration: InputDecoration(
                icon: Icon(Icons.send),
                labelText: "Enter Title...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),

            SizedBox(height: 20),
            TextField(
              controller: _contentEditingController,
              decoration: InputDecoration(
                icon: Icon(Icons.send),
                labelText: "Contant...",

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Cancle",
                    style: TextStyle(color: Colors.red),
                  ),
                ),

                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Save",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
