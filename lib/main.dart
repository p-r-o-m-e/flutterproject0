import 'package:flutter/material.dart';
import 'package:webapp/modules/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PractiKL',
      debugShowCheckedModeBanner: false,
      theme:
          // ThemeData.dark(),
          ThemeData(
              primaryColor: Colors.green,
              dividerTheme: const DividerThemeData(
                  thickness: 1.75, color: Colors.white12),
              // colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
              colorScheme: const ColorScheme.highContrastDark(
                primary: Colors.white54,
                //surface: Colors.red,
                // onBackground: Colors.red,
                // onSurface: Colors.red
              ), //
              useMaterial3: true,
              appBarTheme: const AppBarTheme(
                scrolledUnderElevation: 0,
              )),
      home: const Home(),
    );
  }
}
