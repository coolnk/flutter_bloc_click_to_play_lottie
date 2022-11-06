import 'package:flutter/material.dart';

class LottieAnimationController extends StatelessWidget {
  final bool isPlaying;

  const LottieAnimationController({super.key, required this.isPlaying});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ElevatedButton(
          onPressed: () => {},
          child: const Text('Click here to change text'),
        ),
      ],
    );
  }
}

class TextChangeController extends StatelessWidget {
  final String text;

  const TextChangeController({Key? key, required this.text}) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  //   // TODO: implement build
  //   throw UnimplementedError();
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ElevatedButton(
          onPressed: () => {},
          child: const Text('Click here to change text'),
        ),
      ],
    );
  }
}
