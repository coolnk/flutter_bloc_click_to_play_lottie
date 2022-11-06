import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bloc/lottie_player_bloc.dart';
import 'lottie_animation_controller.dart';

class App extends StatelessWidget {
  final style = const TextStyle(fontSize: 40, fontWeight: FontWeight.bold);
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
          create: (context) => LottiePlayerBloc(),
          child: Scaffold(
              appBar: AppBar(
                title: Text('Lottie player',
                    style: GoogleFonts.comfortaa(textStyle: style)),
                centerTitle: true,
                backgroundColor: Colors.cyan,
              ),
              body: Center(
                child: BlocConsumer<LottiePlayerBloc, LottiePlayerState>(
                  listener: (context, state) {},
                  builder: (context, state) {
                    return Text('Coming soon...',
                        style: GoogleFonts.comfortaa(textStyle: style));
                  },
                ),
              ),
              floatingActionButton: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                      child: const Icon(Icons.play_arrow_rounded),
                      onPressed: () => {
                            context
                                .read<LottiePlayerBloc>()
                                .add(const LottiePlayerPlayButtonClicked(true))
                          })
                ],
              ))),
    );
  }
}
