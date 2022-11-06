part of 'lottie_player_bloc.dart';

abstract class LottiePlayerState extends Equatable {
  const LottiePlayerState();

  @override
  List<Object> get props => [];
}

class LottiePlayerInitialState extends LottiePlayerState {
  final bool isPlaying;
  const LottiePlayerInitialState({required this.isPlaying});

  @override
  List<Object> get props => [isPlaying];
}

class LottiePlayerAmimatedState extends LottiePlayerState {
  final bool isPlaying; //you don't really need to send this in the constructor
  const LottiePlayerAmimatedState({required this.isPlaying});

  @override
  List<Object> get props => [isPlaying];
}
