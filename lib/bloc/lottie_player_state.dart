part of 'lottie_player_bloc.dart';

abstract class LottiePlayerState extends Equatable {
  const LottiePlayerState();
  
  @override
  List<Object> get props => [];
}

class LottiePlayerInitial extends LottiePlayerState {}
