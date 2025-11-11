import 'package:flutter/material.dart';
import 'ui/form_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFDEFF4),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFFFC4D6),
          foregroundColor: Colors.black,
          elevation: 0,
        ),
      ),
      home: const FormData(),
    );
  }
}
