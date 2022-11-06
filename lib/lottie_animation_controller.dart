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
