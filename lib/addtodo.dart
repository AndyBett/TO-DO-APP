import 'package:flutter/material.dart';

class Addtodo extends StatefulWidget {
  const Addtodo({super.key});

  @override
  State<Addtodo> createState() => _AddtodoState();
}

class _AddtodoState extends State<Addtodo> {
  TextEditingController todoText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Add todo tasks'),
        TextField(
          controller: todoText,
        ),
        ElevatedButton(
            onPressed: () {
              print(todoText);
            },
            child: Text('Add'))
      ],
    );
  }
}
