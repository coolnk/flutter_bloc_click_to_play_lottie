part of 'lottie_player_bloc.dart';

abstract class LottiePlayerEvent extends Equatable {
  const LottiePlayerEvent();

  @override
  List<Object> get props => [];
}

class LottiePlayerPlayButtonClicked extends LottiePlayerEvent {
  const LottiePlayerPlayButtonClicked();

  @override
  List<Object> get props => [];
}
