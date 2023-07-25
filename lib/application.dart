import 'package:flutter/material.dart';
import 'package:test_color/page/home_page.dart';

///Application with Material App Widget
class Application extends StatelessWidget {
  /// [key] Key for Application Widget
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
