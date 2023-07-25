import 'dart:math' as math;
import 'package:flutter/material.dart';

import 'package:test_color/constant.dart';

/// Home Page for demo this test
class HomePage extends StatefulWidget {
  /// [key] : Key of widget
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color backgroundColor = Colors.white;

  Color _generateColor() {
    return Color.fromARGB(
      maxValueColor, // 255
      math.Random().nextInt(maxValueColor + 1), // from 0 to 255.
      math.Random().nextInt(maxValueColor + 1), // from 0 to 255.
      math.Random().nextInt(maxValueColor + 1), // from 0 to 255.
    );
  }

  @override
  void initState() {
    super.initState();
    Colors.primaries.length;
    backgroundColor = _generateColor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            backgroundColor = _generateColor();
          });
        },
        child: ColoredBox(
          key: const Key('color_box'),
          color: backgroundColor,
          child: Center(
            // Change text color when background color change
            // the color of text is depend on the brightness of background.
            child: Text(
              'Hello there!',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color:
                        ThemeData.estimateBrightnessForColor(backgroundColor) ==
                                Brightness.dark
                            ? Colors.white
                            : Colors.black,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
