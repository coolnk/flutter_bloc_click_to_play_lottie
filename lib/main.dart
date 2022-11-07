import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_click_to_play_lottie/bloc/lottie_player_bloc.dart';

import 'splash.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LottiePlayerBloc(),
      child: const MaterialApp(home: SplashScreen()),
    );
  }
}
