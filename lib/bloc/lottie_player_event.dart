part of 'lottie_player_bloc.dart';

abstract class LottiePlayerEvent extends Equatable {
  const LottiePlayerEvent(bool bool);

  @override
  List<Object> get props => [];
}

class LottiePlayerPlayButtonClicked extends LottiePlayerEvent {
  bool isPlaying = false;
  LottiePlayerPlayButtonClicked({required this.isPlaying}) : super(false);

  @override
  List<Object> get props => [isPlaying];
}
