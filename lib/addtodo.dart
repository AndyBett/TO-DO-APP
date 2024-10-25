import 'package:flutter/material.dart';

class Addtodo extends StatefulWidget {
  void Function({required String todoText}) changeText;
  Addtodo({super.key, required this.changeText});

  @override
  State<Addtodo> createState() => _AddtodoState();
}

class _AddtodoState extends State<Addtodo> {
  TextEditingController todoText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Add todo tasks'),
        TextField(
          controller: todoText,
          decoration: InputDecoration(
            hintText: "Write your todo here ... ",
          ),
        ),
        ElevatedButton(
            onPressed: () {
              print(todoText);

              widget.changeText(todoText: todoText.text);
              todoText.text = "";
            },
            child: const Text('Add'))
      ],
    );
  }
}
