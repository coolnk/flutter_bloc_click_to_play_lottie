import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/lottie_player_bloc.dart';

class App extends StatelessWidget {
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
              title: const Text("Lottie player"),
              centerTitle: true,
              backgroundColor: Colors.red,
            ),
          )),
    );
  }
}
