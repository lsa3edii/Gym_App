import 'package:flutter/material.dart';

// double screenHeigth = MediaQuery.of(context).size.height;
// double screenWidth = MediaQuery.of(context).size.width;

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // final double heigtScreen = constraints.maxHeight;
        // final double widthScreen = constraints.maxWidth;

        return Container();
      },
    );
  }
}
