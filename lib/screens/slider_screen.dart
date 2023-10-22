import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValueWidth = 100;
  bool _sliderValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Slider & Checks')),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Slider.adaptive(
              min: 10,
              max: 400,
              activeColor: AppTheme.primaryColor,
              inactiveColor: AppTheme.primaryColor.withOpacity(0.5),
              value: _sliderValueWidth,
              onChanged: _sliderValue
                  ? (value) {
                      _sliderValueWidth = value;
                      setState(() {});
                    }
                  : null,
            ),
            Checkbox(
              value: _sliderValue,
              onChanged: (value) {
                _sliderValue = value ?? true;
                setState(() {});
              },
            ),
            CheckboxListTile(
              activeColor: AppTheme.primaryColor,
              value: _sliderValue,
              onChanged: (value) {
                _sliderValue = value ?? true;
                setState(() {});
              },
              title: const Text('Check Box List Tile'),
            ),
            Switch(
                value: _sliderValue,
                onChanged: (value) {
                  _sliderValue = value;
                  setState(() {});
                }),
            SwitchListTile.adaptive(
              activeColor: AppTheme.primaryColor,
              value: _sliderValue,
              onChanged: (value) {
                _sliderValue = value ?? true;
                setState(() {});
              },
              title: const Text('Switch List Tile'),
            ),
            const AboutListTile(),
            const SizedBox(
              height: 50,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://cdn.pixabay.com/photo/2020/08/29/16/08/pikachu-5527379_1280.jpg'),
                  fit: BoxFit.contain,
                  width: _sliderValueWidth,
                ),
              ),
            ),
          ],
        ));
  }
}
