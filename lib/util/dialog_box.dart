import 'package:flutter/material.dart';

import 'my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue[200],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          // get user input
          TextField(
            controller: controller,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Add a new task',
              hintStyle: TextStyle(color: Colors.white70),
            ),
          ),

          // buttons -> save and cancel
          Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
            // save button
            MyButton(text: 'Save', onPressed: onSave),
            const SizedBox(width: 8),

            // cancel button
            MyButton(text: 'Cancel', onPressed: onCancel),
          ]),
          ],
        ),
      ),
    );
  }
}
