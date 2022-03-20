import 'package:flutter/material.dart';
import 'package:homebrew_editor/view/view.dart';
import 'package:homebrew_editor/model/model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Homebrew Editor',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const PageEditor(),
    );
  }
}
