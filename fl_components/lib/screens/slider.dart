import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sliders & checks'),
        ),
        body: Column(
          children: [
            Slider.adaptive(
              activeColor: AppTheme.primary,
              min: 50,
              max: 1000,
              value: _sliderValue,
              onChanged: _sliderEnabled
                  ? (value) {
                      _sliderValue = value;
                      setState(() {});
                    }
                  : null,
            ),
            /*  Checkbox(
              value: _sliderEnabled,
              onChanged: (value) {
                _sliderEnabled = value ?? true;
                setState(() {});
              },
            ), */
            CheckboxListTile(
              activeColor: AppTheme.primary,
              title: const Text("habilitar color"),
              value: _sliderEnabled,
              onChanged: (value) {
                _sliderEnabled = value ?? true;
                setState(() {});
              },
            ),
            /* Switch(
              value: _sliderEnabled,
              onChanged: (value) {
                _sliderEnabled = value;
                setState(() {});
              },
            ), */
            SwitchListTile(
              activeColor: AppTheme.primary,
              title: const Text('HABILITAR SLIDER'),
              value: _sliderEnabled,
              onChanged: (value) {
                _sliderEnabled = value;
                setState(() {});
              },
            ),
            const AboutListTile(),
            Expanded(
              child: SingleChildScrollView(
                child: Center(
                  child: Image(
                    image: const NetworkImage(
                        'https://static.wikia.nocookie.net/doblaje/images/a/a3/Marcus_Fenix_GOW.png/revision/latest?cb=20181103233238&path-prefix=es'),
                    width: _sliderValue,
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
