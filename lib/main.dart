import 'package:flutter/material.dart';
import 'package:homebrew_editor/view/view.dart';
import 'package:homebrew_editor/model/model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Data(),
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Homebrew Editor',
      theme: CustomTheme.defaultTheme,
      home: const PageEditor(),
    );
  }
}
