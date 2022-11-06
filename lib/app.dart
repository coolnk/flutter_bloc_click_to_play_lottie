import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bloc/lottie_player_bloc.dart';

class App extends StatelessWidget {
  final style = const TextStyle(fontSize: 40, fontWeight: FontWeight.bold);
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
          create: (context) => LottiePlayerBloc(),
          child: Scaffold(
            appBar: AppBar(
              // title: Text(widget.title),
              title: Text('Lottie player',
                  style: GoogleFonts.comfortaa(textStyle: style)),
              centerTitle: true,
              backgroundColor: Colors.cyan,
            ),
          )),
    );
  }
}
