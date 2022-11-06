import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'animation_controller.dart';
import 'bloc/lottie_player_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Click to Play Lottie',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: const MyHomePage(title: 'Flutter Demo Home Page'),
        home: BlocProvider(
          create: (context) => LottiePlayerBloc(),
          child: Scaffold(
            appBar: AppBar(title: const Text('App Bar title')),
            body: BlocConsumer<LottiePlayerBloc, LottiePlayerState>(
              listener: (context, state) {},
              builder: (context, state) {  // this  is supposed to build something on the interface
                return MyAnimationController(text: '',)
              },
            ),
            backgroundColor: Colors.amber,
          ),
        )
        //more things material app offers...

        );
  }
}
