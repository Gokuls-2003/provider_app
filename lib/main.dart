import 'package:counter_app/controller/contoller.dart';
import 'package:counter_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListenableProvider(
      create: (context) => CountProvider(),
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
