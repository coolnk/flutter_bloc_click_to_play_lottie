import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../bloc/lottie_player_bloc.dart';

class LottieAnimations extends StatelessWidget {
  const LottieAnimations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<LottiePlayerBloc, LottiePlayerState>(
        builder: (context, state) {
          return Lottie.network(
            'https://assets7.lottiefiles.com/packages/lf20_etjk2gn2.json',
          );
        },
      ),
    );
  }
}
