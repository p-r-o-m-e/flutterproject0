import 'package:flutter/material.dart';

import 'home_page.dart';
import 'mobile_home.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1024) {
          return const HomePage();
        } else {
          return const MobileHome();
        }
      },
    );
  }
}
