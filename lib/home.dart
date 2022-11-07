import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bloc/lottie_player_bloc.dart';
import 'widgets/lottie_animations.dart';

class Home extends StatelessWidget {
  final style = const TextStyle(fontSize: 40, fontWeight: FontWeight.bold);
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
              Text('Puku kids', style: GoogleFonts.comfortaa(textStyle: style)),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 14, 77, 61),
        ),
        body: const LottieAnimations(),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
                backgroundColor: const Color.fromARGB(255, 215, 112, 9),
                onPressed: () => {
                      context
                          .read<LottiePlayerBloc>()
                          .add(const LottiePlayerPlayButtonClicked())
                    },
                child: const Icon(Icons.play_arrow))
          ],
        ));
  }
}
