import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValueWidth = 100;
  double _sliderValueHeight = 400;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks')
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Slider.adaptive(
              min: 10,
              max: 400,
              activeColor: AppTheme.primaryColor,
              inactiveColor: AppTheme.primaryColor.withOpacity(0.5),
              value: _sliderValueWidth, 
              onChanged: (value) {
                _sliderValueWidth = value;
                setState(() {});
              }
              ),
              const SizedBox(height: 20,),
              Slider(
                value: _sliderValueHeight, 
                min: 10,
                max: 700,
                activeColor: AppTheme.primaryColor,
                inactiveColor: AppTheme.primaryColor.withOpacity(0.5),
                divisions: 400,
                label: _sliderValueHeight.toStringAsFixed(0),
                onChanged: (value) {
                  _sliderValueHeight = value;
                  setState(() {});
                }
              ),
              const SizedBox(height: 20,),
              Image(
                image:  NetworkImage('https://cdn.pixabay.com/photo/2020/08/29/16/08/pikachu-5527379_1280.jpg'),
                fit: BoxFit.contain,
                width: _sliderValueWidth,
                height: _sliderValueHeight,
              ),
              const SizedBox(height: 50,),
      
          ],
        ),
      )
    );
  }
}