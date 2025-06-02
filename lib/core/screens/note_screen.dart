import 'package:flutter/material.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Write your Notes"), centerTitle: true),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Center(
          child: Column(children: [TextField(decoration: InputDecoration())]),
        ),
      ),
    );
  }
}
