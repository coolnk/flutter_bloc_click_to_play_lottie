import 'dart:html';

import 'package:flutter/material.dart';

class MyAnimationController extends StatelessWidget {
  final String text;

  const MyAnimationController({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AnimationChange(text: text),
        ElevatedButton(
          // onPressed: () =>
          //     context. .read<LottiePlayerBloc>().add(const ChangeTextEvent()),
          onPressed: () {},
          child: const Text('Click here to change text'),
        ),
      ], //The buld job is sent to another widget. widget inside a widget :o
    );
  }
}

//What exactly is this?
class AnimationChange extends StatelessWidget {
  final String text;
  const AnimationChange({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(Object context) {
    //Todo: Change this to return an animation object with the text
    return Text(text);
  }
}
