import 'package:app/util/my_button.dart';
import 'package:flutter/material.dart';

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
      backgroundColor: Colors.yellow[300],
      content: SizedBox(
        height: 120,
        child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
          children: [
          TextField(
            controller: controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Add a New task",
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MyButton(text: "Save", onPressed: onSave),
              const SizedBox(width: 8),
              MyButton(text: "Cancel", onPressed: onCancel)
            ],
          ),
        ]),
      ),
    );
  }
}
