import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import 'bloc/lottie_player_bloc.dart';

class Home extends StatelessWidget {
  final style = const TextStyle(fontSize: 40, fontWeight: FontWeight.bold);
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => LottiePlayerBloc(),
        child: Scaffold(
            appBar: AppBar(
              title: Text('Puku kids',
                  style: GoogleFonts.comfortaa(textStyle: style)),
              centerTitle: true,
              backgroundColor: const Color.fromARGB(255, 14, 77, 61),
            ),
            body: Center(
              child: BlocBuilder<LottiePlayerBloc, LottiePlayerState>(
                builder: (context, state) {
                  return Lottie.network(
                    'https://assets7.lottiefiles.com/packages/lf20_etjk2gn2.json',
                  );
                },
              ),
            ),
            floatingActionButton: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                    backgroundColor: const Color.fromARGB(255, 215, 112, 9),
                    onPressed: () => {
                          // context
                          //     .read<LottiePlayerBloc>()
                          //     .add(const LottiePlayerPlayButtonClicked(true))
                        },
                    child: const Icon(Icons.play_arrow))
              ],
            )));
  }
}
