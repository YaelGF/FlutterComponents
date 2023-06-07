import 'package:flutter/material.dart';
import 'dart:math' show Random;

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double _width = 50;
  double _height = 50;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(10);

  void changeShape(){

    final random = Random();

    setState(() {
      _width =  random.nextInt(300).toDouble() + 70;
      _height = random.nextInt(300).toDouble() + 70;
      _color =  Color.fromRGBO(
          random.nextInt(255),
          random.nextInt(255),
          random.nextInt(255),
          1
      );
      _borderRadiusGeometry = BorderRadius.circular(random.nextInt(100).toDouble() + 10);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedScreen'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeOutCubic,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _borderRadiusGeometry,
            color: _color,
          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(Icons.play_arrow, size: 40),
      ),
    );
  }
}