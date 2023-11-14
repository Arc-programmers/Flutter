import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class WriteExamples extends StatefulWidget {
  const WriteExamples({super.key});

  @override
  State<WriteExamples> createState() => _WriteExamplesState();
}

class _WriteExamplesState extends State<WriteExamples> {
  final database = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Write examples"),
      ),
      body: const Text("Hi")
    );
  }
}
